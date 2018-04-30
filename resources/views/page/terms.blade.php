@extends('layouts.index')

@section('title', $pages->meta_description)
@section('meta_description', $pages->meta_description)
@section('meta_keywords', $pages->meta_keywords)

@section('content')
    <div class="container">
        {{--{{dd($pages)}}--}}
    </div>
@endsection