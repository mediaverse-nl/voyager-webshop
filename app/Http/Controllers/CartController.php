<?php

namespace App\Http\Controllers;

use Cart;
use Mollie;

use Illuminate\Http\Request;

class CartController extends Controller
{
    const STATUS_PENDING = 'pending';
    const STATUS_OPEN = 'open';
    const STATUS_COMPLETED = 'paid';
    const STATUS_CANCELLED = 'cancelled';
    const STATUS_FAILED = 'failed';

    protected $property;
    protected $order;
    protected $mollie;

    public function __construct()
    {
//        $this->property = new Property();
//        $this->order = new Order();
        $this->mollie = Mollie::api();
        $this->cart = new Cart();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('cart.index')->with('cart', $this->cartContent());
    }

    public function add(AddCart $request)
    {
        $property = $this->property->find($request->property_id);

        Cart::add([
            'id' => $property->id,
            'name' => $property->product->name,
            'qty' => $request->qty ? $request->qty : 1,
            'options' => [$property],
            'price' => $property->price(),
        ]);

        return redirect()->route('cart.index');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (Cart::count() == 0) {
            return redirect()->route('cart.index');
        }
        $this->cartContent();
        return view('cart.create')
            ->with('mollie', $this->mollie->methods()->all());
    }

    public function order(CartOrder $request)
    {
        $cart = $this->cartContent();
        $aflevering = Order::verzendingMethod()->where('sending', $request->verzending)->first();
        $order = $this->order;
        $order->verzending = $aflevering['verzending'];
        $order->verzendkosten = $aflevering['price'];
        if(\Auth::check())
            $order->users_id = Auth::user()->id;
//        $order->totaal = Cart::subtotal() + $aflevering['price'];
        $order->address = $request->adres;
        $order->postalcode = str_replace(' ', '', $request->postcode);
        $order->state = $request->woonplaats;
        $order->full_name = $request->volledige_naam;
        $order->email = $request->email;
        $order->method = $request->methode;
        $order->status = self::STATUS_OPEN;
        $order->save();
        $payment =  $this->mollie->payments()->create([
            "amount"      => $order->totaal,
            "description" => "Order Nr. ". $order->id,
            "redirectUrl" => route('order.show', $order->id),
            'metadata'    => array(
                'order_id' => $order->id,
            ),
            "method" => $order->method,
        ]);
        $orderNew = $this->order->find($order->id);
        $orderNew->payment_id = $payment->id;
        $orderNew->status = self::STATUS_PENDING;
        $orderNew->save();
        session()->forget('trash');
        session(['trash' => $payment->id]);
        $data = [];
        foreach ($cart as $item)
        {
            $property = $this->productProperty->find($item->id);
            if($property->stock - $item->qty < 0){
                return redirect()->route('cart.index');
            }
            $data[] = [
                'order_id' => $order->id,
                'product_property_id' => $property->id,
                'prijs'=> $item->price,
                'amount' => $item->qty
            ];
        }
        OrderDetails::insert($data);
        return redirect($payment->getPaymentUrl());
    }

    public function show($id)
    {
        $order = $this->order->find($id);
        $payment =  $this->mollie->payments()->get($order->payment_id);
        if(session('trash') !== $order->payment_id)
            return redirect()->route('cart.index');
        if ($payment->isPaid())
        {
            Cart::destroy();
            if($order->status != self::STATUS_COMPLETED)
            {
                $order->status = self::STATUS_COMPLETED;
                foreach ($order->orderDetails as $item){
                    $item->productProperty->update(['stock' => ($item->productProperty->stock - $item->amount)]);
                }
                Mail::send('email.order.confirmation', ['order' => $order], function($m) use ($order)
                {
                    $m->from('no-replay@biggirlzbymartje.nl', 'Biggirlz By Martje');
                    $m->to($order->email, $order->volledige_naam)->subject('bestelling '. $order->id);
                    $pdf = PDF::loadView('pdf.invoice', ['orders' => $order]);
                    $m->attachData($pdf->output(), 'factuur-'.$order->id.'-biggirlz.pdf');
                    $m->getSwiftMessage();
                });
            }
        }
        elseif (!$payment->isOpen())
        {
            $order->status = self::STATUS_CANCELLED;
        }
        $order->save();
        return view('cart.show')->with('order', $order)->with('payment', $payment);
    }

    public function cartContent(){
        foreach ($this->cart as $item){
            $stock = $this->property->find($item->id);
            Cart::update($item->rowId, $stock->stock - $item->qty >= 0 ? $item->qty : $stock->stock);
        }
    }

    public function remove()
    {
        Cart::remove(Request()->get('row'));
        return redirect()->route('cart.index');
    }

    public function decrease(Request $request)
    {
        Cart::update(Request()->get('row'), Request()->get('qty') ? Request()->get('qty') : 1);
        return redirect()->route('cart.index');
    }

    public function increase(Request $request)
    {
        Cart::update(Request()->get('row'), Request()->get('qty') ? Request()->get('qty') : 1);
        return redirect()->route('cart.index');
    }

    public function destroy()
    {
        Cart::destroy();
        return redirect()->route('cart.index');
    }
}
