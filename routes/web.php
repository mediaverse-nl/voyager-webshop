<?php

Auth::routes();

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/', 'HomeController@index')->name('home');

Route::get('/winkelwagen', 'CartController@index')->name('cart.index');

Route::get('/{title}/c-{id}', 'CategoryController@show')->name('category.show');
Route::get('/{title}/p-{id}', 'ProductController@show')->name('product.show');

Route::get('/{slug}/{slug2?}', 'PagesController@show')->name('page.show');


//Route::auth();

