
<figure class="card card-product">
    <div class="img-wrap">
        <img src="images/items/3.jpg">
        <a class="btn-overlay" href="{{route('product.show', [str_replace(' ', '-', $product->title), $product->id])}}">
            <i class="fa fa-search-plus"></i> Quick view
        </a>
    </div>
    <figcaption class="info-wrap">
        @if($product->checkIfNew())
            <span class="badge-new"> NEW </span>
        @endif
        @if(true)
            <span class="badge-offer"><b> - 50%</b></span>
        @endif
        <h6 class="title text-dots"><a href="{{route('product.show', [str_replace(' ', '-', $product->title), $product->id])}}">{!! $product->title !!}</a></h6>
        <div class="action-wrap">
            <a href="{{route('product.show', ['test', 1])}}" class="btn btn-primary btn-sm float-right"> Order </a>
            <div class="price-wrap h5">
                @if(true)
                    <span class="price-new">$1280</span>
                @endif
                <del class="price-old">$1980</del>
            </div> <!-- price-wrap.// -->
        </div> <!-- action-wrap -->
    </figcaption>
</figure> <!-- card // -->

@push('css')

@endpush