<?php

namespace App\Providers;

use App\Category;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        $parent = Category::where('parent_id', NULL)
            ->where('status', '=', 'ACTIVE')
            ->orderBy('name', 'ASC')
            ->get();

        view()->share('parentCategory', $parent);
//        view()->share('partials.header', $parent);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
