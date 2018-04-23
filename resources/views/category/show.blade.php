@extends('layouts.index')

@section('content')

    <style>
        .card{
            padding: 20px;
        }
    </style>

    <div class="row">

        @component('components.product-sm-card', ['product' => ''])

        @endcomponent


    </div> <!-- row.// -->

@endsection