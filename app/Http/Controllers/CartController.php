<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CartController extends Controller
{
    protected $cart;

    public function __construct()
    {

    }

    public function index()
    {
        return view('cart.index');
    }
}
