
<figure class="card card-product">
    <div class="img-wrap">
        <img src="{{ asset('/storage/'.$product->image) }}">
        <a class="btn-overlay" href="{{route('product.show', [str_replace(' ', '-', $product->title), $product->id])}}">
            <i class="fa fa-search-plus"></i> Quick view
        </a>
    </div>
    <figcaption class="info-wrap">
        @if($product->checkIfNew())
            <span class="badge-new"> NEW </span>
        @endif
        @if($product->checkIfDiscount())
            <span class="badge-offer"><b> {!! $product->discountPercentage() !!}%</b></span>
        @endif
        <h6 class="title text-dots"><a href="{{route('product.show', [str_replace(' ', '-', $product->title), $product->id])}}">{!! $product->title !!}</a></h6>
        <div class="action-wrap">
            <a href="{{route('product.show', [str_replace(' ', '-', $product->title), $product->id])}}" class="btn btn-primary btn-sm float-right"> Order </a>
            <div class="price-wrap h5">
                @if($product->checkIfDiscount())
                    <span class="price-new">€{{$product->discountedPrice()}}</span>
                    <del class="price-old">€{!! $product->price() !!}</del>
                @else
                    <span class="price">€{!! $product->price() !!}</span>
                @endif
            </div> <!-- price-wrap.// -->
        </div> <!-- action-wrap -->
    </figcaption>
</figure> <!-- card // -->

@push('css')

@endpush