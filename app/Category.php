<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    public function parent()
    {
        return $this->belongsTo('App\Category', 'parent_id')->orderBy('name', 'asc');
    }

    public function children()
    {
        return $this->hasMany('App\Category', 'parent_id')->orderBy('name', 'asc');
    }

    public function product()
    {
        return $this->belongsTo('App\Product');
    }

    public function route()
    {
        return route('category.show', [str_replace(' ', '-', $this->name), $this->id]);
    }

    //makes a clean grouped array from the categories
    public static function groupList()
    {
        $category = Category::all();
        $array = [];
        foreach ($category->where('category_id', 0) as $parent){
            $array[$parent->title] = array();
            foreach($parent->children as $attribute) {
                $array[$parent->title][$attribute->id] = $attribute->title;
            }
        }
        return $array;
    }

//    public function getActiveCategories()
//    {
//        $categories = $this->where('status', '=', 'ACTIVE')->get();
//
//        return $categories;
//    }

}
