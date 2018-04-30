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
    public function index($title, $id)
    {
        $category = $this->category
            ->findOrFail($id);

        $categories = $category->children;

        return view('category.index')
            ->with('category', $category)
            ->with('categories', $categories);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show($title, $id)
    {
        $category = $this->category
            ->findOrFail($id);

        if ($category->parent()->exists())
        {

            if (str_replace(' ', '-', $category->name) !== $title){
                return redirect()
                    ->route('category.show', [str_replace('-',' ', $category->name), $category->id]);
            }

            $categories = $category->parent->children;

            $products = $this->product
                ->where('category_id', '=', $id)
                ->get();

            return view('category.show')
                ->with('category', $category)
                ->with('categories', $categories)
                ->with('products', $products);
        }

        return $this->index($title, $id);
    }
}
