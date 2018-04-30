<?php

// Home
Breadcrumbs::register('home', function ($breadcrumbs) {
    $breadcrumbs->push('Home', route('home'));
});

// Home > [Category]
Breadcrumbs::register('category.index', function ($breadcrumbs, $category) {
    $breadcrumbs->parent('home');
    $breadcrumbs->push($category->name, $category->route());
});

// Home > [Category] > [Category]
Breadcrumbs::register('category.show', function ($breadcrumbs, $category) {
    $breadcrumbs->parent('category.index', $category->parent);
    $breadcrumbs->push($category->name, $category->route());
});

// Home > [Category] > [Category] > [Product]
Breadcrumbs::register('product.show', function ($breadcrumbs, $product) {
    $breadcrumbs->parent('category.show', $product->category);
    $breadcrumbs->push($product->title, route('category.show', [str_replace(' ', '-', $product->title), $product->id]));
});