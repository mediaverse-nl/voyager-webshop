<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    protected $table = 'products';

    public function checkIfNew()
    {
        $createdAt = Carbon::parse($this->created_at);

        $createdAt->addWeek(1);

        $current = Carbon::now();

        if ($current > $createdAt){
            return true;
        }

        return false;
    }

    public function checkIfDiscount()
    {
        if ($this->discount !== null ||0.00) {
            return true;
        }
        return false;
    }

    public function discountedPrice()
    {
        return number_format($this->price() - $this->discount(), 2);
    }

    public function discountPercentage()
    {
        if ($this->checkIfDiscount()) {
            $oldFigure = $this->price();
            $newFigure = $this->discountedPrice();
            $percentChange = ($oldFigure / 100 ) * $newFigure;
            return $percentChange;
        }
    }

    public function price()
    {
        return number_format($this->price, 2);
    }

    public function discount()
    {
        return number_format($this->discount, 2);
    }
//    public function categoryId()
//    {
//        return $this->belongsTo('App\Category', 'category_id')->where('parent_id', '=', null);
//    }
}
