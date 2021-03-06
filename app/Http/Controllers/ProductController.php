<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    protected $product;

    public function __construct(Product $product)
    {
        $this->product = $product;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($title, $id)
    {
        $product = $this->product->findOrFail($id);

        if (str_replace(' ', '-', $product->title) !== $title){
            return redirect()
                ->route('product.show', [$product->title, $product->id]);
        }

        return view('product.show')
            ->with('product', $product);
    }
}
