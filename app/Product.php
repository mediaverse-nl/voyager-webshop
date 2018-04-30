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
        if ($this->discount != 0.00) {
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
            $percentChange =  ($this->discountedPrice() - $this->price()) / $this->price() * 100;
            return number_format($percentChange);
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

    public function category(){
        return $this->belongsTo('App\Category', 'category_id');
    }

    public function categoryId()
    {
        return $this->belongsTo('App\Category', 'category_id')->where('parent_id', '=', null);
    }
}
