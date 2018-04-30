@extends('layouts.index')

@section('content')

    <div class="container">

        {{ Breadcrumbs::render('product.show', $product) }}

        <div class="card col-12">

            <div class="row no-gutters">
                <aside class="col-sm-5 border-right">
                    <article class="gallery-wrap">
                        <div class="img-big-wrap">
                            <div>
                                <a href="{{ asset('/storage/'.$product->image) }}" data-fancybox="group" data-thumb>
                                    <img src="{{ asset('/storage/'.$product->image) }}" rel="test" class="img-fluid" alt="{!! $product->title !!}">
                                </a>
                            </div>
                        </div> <!-- sliproductsduct.// -->
                        <div class="img-small-wrap">
                            @foreach(json_decode($product->images) as $image)
                                <a class="item-gallery" href="{{ asset('/storage/'.$image) }}" data-fancybox="group" data-thumb>
                                    <img src="{!! Voyager::image($image) !!}" >
                                </a>
                            @endforeach
                        </div> <!-- slider-nav.// -->
                    </article> <!-- gallery-wrap .end// -->
                </aside>
                <aside class="col-sm-7">
                    <article class="p-5">
                        <h3 class="title mb-3">{!! $product->title !!}</h3>

                        <div class="price-detail-wrap">
                            <var class="price h3 text-warning">
                                <span class="currency"></span>€<span class="num">{!! $product->price() !!}</span>
                            </var>
                            {{--<span>/per kg</span>--}}
                        </div> <!-- price-detail-wrap .// -->
                        <dl>
                            <dt>Description</dt>
                            <dd>{!! $product->description !!}</dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3">Model#</dt>
                            <dd class="col-sm-9">12345611</dd>

                            <dt class="col-sm-3">Color</dt>
                            <dd class="col-sm-9">Black and white </dd>

                            <dt class="col-sm-3">Delivery</dt>
                            <dd class="col-sm-9">Russia, USA, and Europe </dd>
                        </dl>
                        <div class="rating-wrap">

                            <ul class="rating-stars">
                                <li style="width:90%" class="stars-active">
                                    <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </li>
                                <li>
                                    <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </li>
                            </ul>
                            <div class="label-rating">132 reviews</div>
                            <div class="label-rating">154 orders </div>
                        </div> <!-- rating-wrap.// -->
                        <hr>
                        <div class="row">
                            <div class="col-sm-5">
                                <dl class="param param-inline">
                                    <dt>Quantity: </dt>
                                    <dd>
                                        <select class="form-control form-control-sm" style="width:70px;">
                                            <option> 1 </option>
                                            <option> 2 </option>
                                            <option> 3 </option>
                                        </select>
                                    </dd>
                                </dl>  <!-- item-property .// -->
                            </div> <!-- col.// -->
                            <div class="col-sm-7">
                                <dl class="param param-inline">
                                    <dt>Size: </dt>
                                    <dd>
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                            <span class="form-check-label">SM</span>
                                        </label>
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                            <span class="form-check-label">MD</span>
                                        </label>
                                        <label class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                            <span class="form-check-label">XXL</span>
                                        </label>
                                    </dd>
                                </dl>  <!-- item-property .// -->
                            </div> <!-- col.// -->
                        </div> <!-- row.// -->
                        <hr>
                        <a href="#" class="btn btn-lg btn-primary"> Buy now </a>
                        <a href="#" class="btn btn-lg btn-outline-primary"> <i class="fas fa-shopping-cart"></i> Add to cart </a>
                    </article> <!-- card-body.// -->
                </aside> <!-- col.// -->
            </div> <!-- row.// -->
        </div> <!-- card.// -->
    </div> <!-- card.// -->

    <br>

    <section class="section-name bg-white padding-y">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb15">
                    <article class="box h-100">
                        <figure class="itembox text-center">
                            <span class="mt-2 icon-wrap rounded icon-sm bg-success">
                                <i class="fa fa-box white"></i>
                            </span>
                            <figcaption class="text-wrap">
                                <h5 class="title">gratis bezorging</h5>
                                <p class="text-muted">vanaf 20.-</p>
                            </figcaption>
                        </figure> <!-- iconbox // -->
                    </article> <!-- panel-lg.// -->
                </div><!-- col // -->
                <div class="col-md-4 mb15">
                    <article class="box h-100">
                        <figure class="itembox text-center">
                            <span class="mt-2 icon-wrap rounded icon-sm bg-warning">
                                <i class="fa fa-truck white"></i>
                            </span>
                            <figcaption class="text-wrap">
                                <h5 class="title">voor 23:59 uur besteld</h5>
                                <p class="text-muted">morgen in huis*</p>
                            </figcaption>
                        </figure> <!-- iconbox // -->
                    </article> <!-- panel-lg.// -->
                </div> <!-- col // -->
                <div class="col-md-4 mb15">
                    <article class="box h-100">
                        <figure class="itembox text-center">
                            <span class="mt-2 icon-wrap rounded icon-sm bg-primary">
                                <i class="fa fa-whatsapp white"></i>
                            </span>
                            <figcaption class="text-wrap">
                                <h5 class="title">wij helpen je graag</h5>
                                <p class="text-muted">via Facebook, Twitter, e-mail of telefonisch via: 038 - 845 45 45</p>
                            </figcaption>
                        </figure> <!-- iconbox // -->
                    </article> <!-- panel-lg.// -->
                </div> <!-- col // -->
            </div> <!-- row.// -->

        </div><!-- container // -->
    </section>

    <section class="section-name bg padding-y">
        <div class="container">
            <h4>Another section if needed</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div><!-- container // -->
    </section>

@endsection

@push('css')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.css" type="text/css" rel="stylesheet">
    <style>
        .fancybox-slide > *{max-width:80%;}
        .img-fluid{
            height: auto !important;
        }
        .img-big-wrap{
            margin-top: 15px;
            margin-right: 15px;
        }
    </style>
@endpush
@push('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $(".fancybox").fancybox({
                'cyclic'    :   true
            });
        });
    </script>
@endpush