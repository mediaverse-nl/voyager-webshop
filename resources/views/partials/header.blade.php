<nav class="navbar fixed-top" id="main-navbar">
    <div id="flipkart-navbar">
        <div class="container">
            <div class="row row1 justify-content-end">
                <ul class="largenav float-left" style="">

                    @foreach($parentCategory as $parent)
                        <li class="upper-links dropdown">
                            <a class="links" href="#">{{$parent->name}}</a>
                            <ul class="dropdown-menu">
                                @foreach($parent->children as $child)
                                    <li class="profile-li dropdown-item">
                                        <a class="profile-links" href="{{route('category.show', [$child->id, $child->id])}}">{{$child->name}}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </li>
                    @endforeach

                </ul>

                <ul class="largenav float-right" style="">
                    {{--<li class="upper-links">--}}
                        {{--<a class="links" href="">Link 1</a>--}}
                    {{--</li>--}}
                    @if (Route::has('login'))
                        @auth
                            <li class="upper-links dropdown">
                                <a class="links" href="http://clashhacks.in/">Account</a>
                                <ul class="dropdown-menu">
                                    <li class="profile-li dropdown-item">
                                        <a class="profile-links" href="">Bestellingen</a>
                                    </li>
                                    <li class="profile-li dropdown-item">
                                        <a class="profile-links" href="">Wenslijst</a>
                                    </li>
                                    <li class="profile-li dropdown-item">
                                        <a class="profile-links" href="">Profile</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="upper-links">
                                <a class="links"  href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>
                        @else
                            <li class="upper-links">
                                <a class="links" href="{{ route('login') }}">Login</a>
                            </li>
                            <li class="upper-links">
                                <a class="links" href="{{ route('register') }}">Register</a>
                            </li>
                        @endauth
                    @endif

                </ul>
            </div>
            <div class="row row2">
                <div class="col-md-2">
                    <a class="links" href="{{route('home')}}">
                        <h2 style="margin:0px;"><span class="smallnav menu" onclick="openNav()">&#x2630; Brand</span></h2>
                        <h1 style="margin:0px;"><span class="largenav">Brand</span></h1>
                    </a>
                </div>
                <div class="flipkart-navbar-search smallsearch col-md-8 col-11">
                    <div class="row">
                        <input class="flipkart-navbar-input col-11" type="" placeholder="Search for Products, Brands and more"
                               name="">
                        <button class="flipkart-navbar-button col-1">
                            <svg width="15px" height="15px">
                                <path d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "
                                />
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="cart largenav col-md-2">
                    <a class="cart-button" href="{{route('cart.index')}}">
                        <svg class="cart-svg " width="16 " height="16 " viewbox="0 0 16 16 ">
                            <path d="M15.32 2.405H4.887C3 2.405 2.46.805 2.46.805L2.257.21C2.208.085 2.083 0 1.946 0H.336C.1 0-.064.24.024.46l.644 1.945L3.11 9.767c.047.137.175.23.32.23h8.418l-.493 1.958H3.768l.002.003c-.017 0-.033-.003-.05-.003-1.06 0-1.92.86-1.92 1.92s.86 1.92 1.92 1.92c.99 0 1.805-.75 1.91-1.712l5.55.076c.12.922.91 1.636 1.867 1.636 1.04 0 1.885-.844 1.885-1.885 0-.866-.584-1.593-1.38-1.814l2.423-8.832c.12-.433-.206-.86-.655-.86 " fill="#fff "/>
                        </svg>

                        <span class="item-number ">0</span>

                    </a>
                </div>
            </div>
        </div>
    </div>
    <div id="mySidenav" class="sidenav">
        <div class="container" style="background-color: #2874f0; padding-top: 10px;"> <span class="sidenav-heading">Home</span>
            <a href="javascript:void(0)"
               class="closebtn" onclick="closeNav()">&#xD7;</a>
        </div>
        <a href="http://clashhacks.in/">Link</a>
        <a href="http://clashhacks.in/">Link</a>
        <a href="http://clashhacks.in/">Link</a>
        <a href="http://clashhacks.in/">Link</a>
    </div>
</nav>
