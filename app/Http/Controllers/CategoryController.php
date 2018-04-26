<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    protected $category;

    protected $product;

    public function __construct(Category $category, Product $product)
    {
        $this->category = $category;
        $this->product = $product;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show($title, $id)
    {
        $categories = $this->category
            ->get();

        $products = $this->product
            ->where('category_id', '=', $id)
            ->get();

        return view('category.show')
            ->with('category', $categories)
            ->with('products', $products);
    }
}
