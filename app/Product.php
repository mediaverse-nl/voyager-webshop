<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    protected $table = 'products';

    public function checkIfNew()
    {
        $current = Carbon::parse( $this->created_at->format('d-m-y'));

        $current->addWeek(1);

        dd($current);

       ;

        return false;
    }

//    public function categoryId()
//    {
//        return $this->belongsTo('App\Category', 'category_id')->where('parent_id', '=', null);
//    }
}
