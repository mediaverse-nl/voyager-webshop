@extends('layouts.index')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-9">
                <div class="card">
                    <table class="table table-hover shopping-cart-wrap">
                        <thead class="text-muted">
                        <tr>
                            <th scope="col">Product</th>
                            <th scope="col" width="120">Quantity</th>
                            <th scope="col" width="120">Price</th>
                            <th scope="col" width="200" class="text-right">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <figure class="media">
                                    <div class="img-wrap"><img src="images/items/3.jpg" class="img-thumbnail img-sm"></div>
                                    <figcaption class="media-body">
                                        <h6 class="title text-truncate">Product name goes here </h6>
                                        <dl class="param param-inline small">
                                            <dt>Size: </dt>
                                            <dd>XXL</dd>
                                        </dl>
                                        <dl class="param param-inline small">
                                            <dt>Color: </dt>
                                            <dd>Orange color</dd>
                                        </dl>
                                    </figcaption>
                                </figure>
                            </td>
                            <td>
                                <select class="form-control">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                </select>
                            </td>
                            <td>
                                <div class="price-wrap">
                                    <var class="price">USD 45</var>
                                    <small class="text-muted">(USD15 each)</small>
                                </div> <!-- price-wrap .// -->
                            </td>
                            <td class="text-right">
                                <a title="" href="" class="btn btn-outline-success" data-toggle="tooltip" data-original-title="Save to Wishlist"> <i class="fa fa-heart"></i></a>
                                <a href="" class="btn btn-outline-danger btn-round">×</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div> <!-- card.// -->

                <br>

                <article class="box">
                    <figure class="itemside">
                        <div class="aside align-self-center">
                            <span class="icon-wrap icon-md round bg-warning">
                                <i class="fa fa-lightbulb white"></i>
                            </span>
                        </div>
                        <figcaption class="text-wrap">
                            <h5 class="title">Sync across all devices</h5>
                            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                tempor incididunt ut labor </p>
                        </figcaption>
                    </figure> <!-- iconbox // -->
                </article> <!-- panel-lg.// -->

            </div>

            <div class="col">
                <article class="box">
                    <figure class="itemside">
                        <div class="aside align-self-center">
                        <span class="icon-wrap icon-md round bg-warning">
                            <i class="fa fa-lightbulb white"></i>
                        </span>
                        </div>
                        <figcaption class="text-wrap">
                            <h5 class="title">Sync across all devices</h5>
                            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                tempor incididunt ut labor </p>
                        </figcaption>
                    </figure> <!-- iconbox // -->
                </article> <!-- panel-lg.// -->
            </div>

        </div> <!-- row.// -->
    </div>




    <br>



    <section class="section-name bg-white padding-y">
        <div class="container">
            <header class="section-heading">
                <h2 class="title-section">Section name</h2>
            </header><!-- sect-heading -->

            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
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