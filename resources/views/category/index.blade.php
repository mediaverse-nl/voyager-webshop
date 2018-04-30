@extends('layouts.index')

@section('content')

    <div class="container">

        {{ Breadcrumbs::render('category.index', $category) }}

        <div class="row">
            @foreach($categories as $category)
                <div class="col-md-3">
                    <figure class="card card-sm card-product">
                        <div class="img-wrap">
                            <img src="images/items/6.jpg">
                        </div>
                        <figcaption class="info-wrap text-center">
                            <h6 class="title text-truncate">
                                <a href="{!! $category->route() !!}">{!! $category->name !!}</a>
                            </h6>
                        </figcaption>
                    </figure> <!-- card // -->
                </div> <!-- col // -->
            @endforeach
        </div> <!-- row.// -->

    </div>

@endsection

@push('js')
<script>
    function collapseState() {
        var lg = window.getComputedStyle(document.documentElement).getPropertyValue('--breakpoint-md');
        if (window.matchMedia("(min-width: "+lg+")").matches) {
            $('.filter-content').addClass('show')
        } else {
            $('.filter-content').removeClass('show')
        }
    }

    collapseState();
    $(window).on('resize',function(){
        collapseState()
    });
</script>
@endpush