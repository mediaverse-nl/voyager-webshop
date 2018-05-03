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

        if (Schema::hasTable('table_name')) {
            $parent = Category::where('parent_id', NULL)
                ->where('status', '=', 1)
                ->orderBy('name', 'ASC')
                ->get();
        }else{
            $parent = [];
        }

        view()->share('parentCategory', $parent);

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
