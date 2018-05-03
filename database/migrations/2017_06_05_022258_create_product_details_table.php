<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('detail_id')->unsigned()->nullable()->default(null);
            $table->foreign('detail_id')->references('id')->on('details')->onUpdate('cascade')->onDelete('set null');
            $table->integer('property_id')->unsigned()->nullable()->default(null);
            $table->foreign('property_id')->references('id')->on('properties')->onUpdate('cascade')->onDelete('set null');;
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_details');
    }
}
