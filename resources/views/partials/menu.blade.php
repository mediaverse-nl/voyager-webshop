


{{$pages}}

<head>
    <!-- Head Contents -->

    @stack('scripts')
</head>


@push('scripts')
    <script src="/example.js"></script>
@endpush

<html>
<head>
    <title>App Name - @yield('title')</title>
</head>
<body>
@section('sidebar')
    This is the master sidebar.
@show

<div class="container">
    @yield('content')
</div>
</body>
</html>