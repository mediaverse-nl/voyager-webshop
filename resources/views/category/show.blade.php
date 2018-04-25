@extends('layouts.index')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-xs-12">

                <div class="card" style="margin-bottom: 20px;">
                    <article class="card-group-item">
                        <header class="card-header">
                            <a href="#" data-toggle="collapse" data-target="#collapse33" aria-expanded="false" class="collapsed">
                                <i class="icon-action fa fa-chevron-down"></i>
                                <h6 class="title">Another title </h6>
                            </a>
                        </header>
                        <div class="filter-content collapse" id="collapse33" style="">
                            <div class="card-body">
                                <div class="custom-control custom-checkbox">
                                    <span class="float-right badge badge-light round">52</span>
                                    <input type="checkbox" class="custom-control-input" id="Check1">
                                    <label class="custom-control-label" for="Check1">Samsung</label>
                                </div> <!-- form-check.// -->

                                <div class="custom-control custom-checkbox">
                                    <span class="float-right badge badge-light round">132</span>
                                    <input type="checkbox" class="custom-control-input" id="Check2">
                                    <label class="custom-control-label" for="Check2">Black berry</label>
                                </div> <!-- form-check.// -->
                            </div> <!-- card-body.// -->
                        </div>
                    </article> <!-- card-group-item.// -->
                    <article class="card-group-item">
                        <header class="card-header">
                            <a href="#" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" class="collapsed">
                                <i class="icon-action fa fa-chevron-down"></i>
                                <h6 class="title">Selection </h6>
                            </a>
                        </header>
                        <div class="filter-content collapse" id="collapse3" style="">
                            <div class="card-body">
                                <input class="custom-range" min="0" max="100" name="" type="range">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label>Min</label>
                                        <input type="number" class="form-control" id="inputEmail4" placeholder="$0">
                                    </div>
                                    <div class="form-group col-md-6 text-right">
                                        <label>Max</label>
                                        <input type="number" class="form-control" placeholder="$1,0000">
                                    </div>
                                </div>
                            </div>
                        </div> <!-- card-body.// -->
                    </article> <!-- card-group-item.// -->
                </div> <!-- card.// -->
            </div>
            <div class="col-lg-9 col-md-8 col-xs-12">
                <div class="row">
                    <div class="col-sm-6 col-lg-4 col-xs-12 col-md-6">
                        @component('components.product-sm-card', ['product' => ''])
                        @endcomponent
                    </div>
                    <div class="col-sm-6 col-lg-4 col-xs-12 col-md-6">
                        @component('components.product-sm-card', ['product' => ''])
                        @endcomponent
                    </div>
                    <div class="col-sm-6 col-lg-4 col-xs-12 col-md-6">
                        @component('components.product-sm-card', ['product' => ''])
                        @endcomponent
                    </div>
                    <div class="col-sm-6 col-lg-4 col-xs-12 col-md-6">
                        @component('components.product-sm-card', ['product' => ''])
                        @endcomponent
                    </div>
                    <div class="col-sm-6 col-lg-4 col-xs-12 col-md-6">
                        @component('components.product-sm-card', ['product' => ''])
                        @endcomponent
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection