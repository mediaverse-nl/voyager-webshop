
<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="author" content="Mediaverse">
    <meta name="description" content="@yield('description')">
    <meta name="keywords" content="@yield('keywords')">

    <title>@yield('title')</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

    <link href="/css/uikit.css" rel="stylesheet" type="text/css"/>

    <!-- Styles -->
    <style>
        body{
            padding-top: 150px !important;
        }
    </style>

    {{-- navbar --}}
    <style>
        #main-navbar{
            padding: 0px !important;
            /*text-align: right;*/
        }
        #flipkart-navbar {
            background-color: #2874f0;
            color: #FFFFFF;
            width: 100% !important;
        }

        .row1{
            padding-top: 10px;
        }

        .row2 {
            padding-bottom: 20px;
        }

        .flipkart-navbar-input {
            /*padding: 11px 16px;*/
            border-radius: 2px 0 0 2px;
            border: 0 none;
            outline: 0 none;
            font-size: 15px;
        }

        .flipkart-navbar-button {
            background-color: #ffe11b;
            border: 1px solid #ffe11b;
            border-radius: 0 2px 2px 0;
            color: #565656;
            padding: 10px 0;
            height: 43px;
            cursor: pointer;
        }

        .cart-button {
            background-color: #2469d9;
            box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .23), inset 1px 1px 0 0 hsla(0, 0%, 100%, .2);
            padding: 10px 0;
            text-align: center;
            height: 41px;
            border-radius: 2px;
            font-weight: 500;
            width: 120px;
            display: inline-block;
            color: #FFFFFF;
            text-decoration: none;
            color: inherit;
            border: none;
            outline: none;
        }

        .cart-button:hover{
            text-decoration: none;
            color: #fff;
            cursor: pointer;
        }

        .cart-svg {
            display: inline-block;
            width: 16px;
            height: 16px;
            vertical-align: middle;
            margin-right: 8px;
        }

        .item-number {
            border-radius: 3px;
            background-color: rgba(0, 0, 0, .1);
            height: 20px;
            padding: 3px 6px;
            font-weight: 500;
            display: inline-block;
            color: #fff;
            line-height: 12px;
            margin-left: 10px;
        }

        .upper-links {
            display: inline-block;
            padding: 0 11px;
            line-height: 23px;
            font-family: 'Roboto', sans-serif;
            letter-spacing: 0;
            color: inherit;
            border: none;
            outline: none;
            font-size: 12px;
        }

        .dropdown {
            position: relative;
            display: inline-block;
            margin-bottom: 0px;
        }

        .dropdown:hover {
            background-color: #fff;
        }

        .dropdown:hover .links {
            color: #000;
        }

        .dropdown:hover .dropdown-menu {
            display: block;
        }

        .dropdown .dropdown-menu {
            position: absolute;
            top: 100%;
            display: none;
            background-color: #fff;
            color: #333;
            left: 0px;
            border: 0;
            border-radius: 0;
            box-shadow: 0 4px 8px -3px #555454;
            margin: 0;
            padding: 0px;
        }

        .links {
            color: #fff;
            text-decoration: none;
        }

        .links:hover {
            color: #fff;
            text-decoration: none;
        }

        .profile-links {
            font-size: 12px;
            font-family: 'Roboto', sans-serif;
            border-bottom: 1px solid #e9e9e9;
            box-sizing: border-box;
            display: block;
            padding: 0 11px;
            line-height: 23px;
        }

        .profile-li{
            padding-top: 2px;
        }

        .largenav {
            display: none;
        }

        .smallnav{
            display: block;
        }

        .smallsearch{
            margin-left: 15px;
            margin-top: 15px;
        }

        .menu{
            cursor: pointer;
        }

        @media screen and (min-width: 768px) {
            .largenav {
                display: block;
            }
            .smallnav{
                display: none;
            }
            .smallsearch{
                margin: 0px;
            }
        }

        /*Sidenav*/
        .sidenav {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #fff;
            overflow-x: hidden;
            transition: 0.5s;
            box-shadow: 0 4px 8px -3px #555454;
            padding-top: 0px;
        }

        .sidenav a {
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            transition: 0.3s
        }

        .sidenav .closebtn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
            color: #fff;
        }

        @media screen and (max-height: 450px) {
            .sidenav a {font-size: 18px;}
        }

        .sidenav-heading{
            font-size: 36px;
            color: #fff;
        }
    </style>

    {{--footer--}}
    <style>
        @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
        footer {
            padding: 60px;
        }

        footer  {
            text-align: left !important;
            color: #007b5e;
            text-transform: uppercase;
        }

        #footer {
            background: #007b5e !important;
        }
        #footer h5{
            padding-left: 10px;
            border-left: 3px solid #eeeeee;
            padding-bottom: 6px;
            margin-bottom: 20px;
            color:#ffffff;
        }
        #footer a {
            color: #ffffff;
            text-decoration: none !important;
            background-color: transparent;
            -webkit-text-decoration-skip: objects;
        }
        #footer ul.social li{
            padding: 3px 0;
        }
        #footer ul.social li a i {
            margin-right: 5px;
            font-size:25px;
            -webkit-transition: .5s all ease;
            -moz-transition: .5s all ease;
            transition: .5s all ease;
        }
        #footer ul.social li:hover a i {
            font-size:30px;
            margin-top:-10px;
        }
        #footer ul.social li a,
        #footer ul.quick-links li a{
            color:#ffffff;
        }
        #footer ul.social li a:hover{
            color:#eeeeee;
        }
        #footer ul.quick-links li{
            padding: 3px 0;
            -webkit-transition: .5s all ease;
            -moz-transition: .5s all ease;
            transition: .5s all ease;
        }
        #footer ul.quick-links li:hover{
            padding: 3px 0;
            margin-left:5px;
            font-weight:700;
        }
        #footer ul.quick-links li a i{
            margin-right: 5px;
        }
        #footer ul.quick-links li:hover a i {
            font-weight: 700;
        }

        @media (max-width:767px){
            #footer h5 {
                padding-left: 0;
                border-left: transparent;
                padding-bottom: 0px;
                margin-bottom: 10px;
            }
        }
    </style>

    @stack('css')

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    @include('partials.header')

    <div class="container">
        @yield('content')
    </div>

    @include('partials.footer')

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "70%";
            // document.getElementById("flipkart-navbar").style.width = "50%";
            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.body.style.backgroundColor = "rgba(0,0,0,0)";
        }
    </script>

    <!-- Scripts -->
    @stack('script')

</body>
</html>