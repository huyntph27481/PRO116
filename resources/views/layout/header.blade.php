@php

@endphp
<!-- Header -->
<header id="wn__header" class=" header__area header__absolute sticky__header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                <div class="logo">
                    <a href="/">
                        <img src="{{ asset('assets/images/logo/logo.png') }}" alt="logo images">
                    </a>
                </div>
            </div>
            <div class="col-lg-8 d-none d-lg-block">
                <nav class="mainmenu__nav">
                    <ul class="meninmenu d-flex justify-content-start">
                        <li class="drop with--one--item"><a href="{{ route('home') }}">Trang chủ</a>

                        </li>

                        <li class="drop"><a href="{{ route('books.show') }}">Sách</a>

                        </li>

                        <li class="drop"><a href="#">Liên Hệ</a>
                            <div class="megamenu dropdown">
                                <ul class="item item01">
                                    <li><a href="about.html">Giới thiệu</a></li>
                                    <li class="label2"><a href="portfolio.html">Portfolio</a>
                                        <ul>
                                            <li><a href="portfolio.html">Portfolio</a></li>
                                            <li><a href="portfolio-three-column.html">Portfolio 3 Column</a>
                                            </li>
                                            <li><a href="portfolio-details.html">Portfolio Details</a></li>
                                        </ul>
                                    </li>

                                </ul>
                            </div>


                    </ul>
                </nav>
            </div>
            <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
                    <li class="shop_search me-4"><a class="search__active" href="#"></a></li>
               <a class="checkout__btn" href="{{ route('cart.index') }}"><li class="shopcart"></a>
                        <!-- Start Shopping Cart -->
                       <div class="block-minicart minicart__active">

                        </div>
                        <!-- End Shopping Cart -->

                    @if (Auth::check())
                    @if (Auth::user()->role === 1)
                    <li class="setting__bar__icon">
                        <a class="setting__active" href="#"></a>
                        <div class="searchbar__content setting__block">
                            <div class="content-inner">
                                <div class="switcher-currency" style="font-size: 16px">
                                    <span class="d-flex justify-content-start">Xin chào</span>
                                    <strong class="label switcher-label">
                                        <span style="font-size: 20px">{{ Auth::user()->name }}</span>
                                    </strong>
                                    <div class="switcher-options">
                                        <div class="switcher-currency-trigger">
                                            <span class="currency-trigger"><a href="{{ route('admin') }}">Truy cập trang quản trị</a></span>
                                            <span class="currency-trigger"><a href="{{ route('my.account.detail') }}">Cập nhật tài khoản</a></span>
                                            <span class="currency-trigger"><a href="{{ route('client.order.index') }}">Đơn hàng</a></span>

                                            <span class="currency-trigger"><a href="{{ route('logout') }}">Đăng xuất</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    @else
                    <li class="setting__bar__icon">
                        <a class="setting__active" href="#"></a>
                        <div class="searchbar__content setting__block">
                            <div class="content-inner">
                                <div class="switcher-currency" style="font-size: 16px">
                                    <span class="d-flex justify-content-start">Xin chào</span>
                                    <strong class="label switcher-label">
                                        <span style="font-size: 20px">{{ Auth::user()->name }}</span>
                                    </strong>
                                    <div class="switcher-options">
                                        <div class="switcher-currency-trigger">

                                        <span class="currency-trigger"><a href="{{ route('my.account.detail') }}">Cập nhật tài khoản</a></span>
                                            <span class="currency-trigger"><a href="{{ route('client.order.index') }}">Đơn hàng</a></span>
                                            <span class="currency-trigger"><a href="{{ route('logout') }}">Đăng xuất</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    @endif
                    @else
                    <li><a href="{{ route('signin') }}">Login</a></li>
                    @endif
                </ul>
            </div>
        </div>
        <!-- Start Mobile Menu -->
        <div class="row d-none">
            <div class="col-lg-12 d-none">
                <nav class="mobilemenu__nav">
                    <ul class="meninmenu">
                        <li><a href="index.html">Home</a>
                            <ul>
                                <li><a href="index.html">Home Style Default</a></li>
                                <li><a href="index-2.html">Home Style Two</a></li>
                                <li><a href="index-3.html">Home Style Three</a></li>
                                <li><a href="index-box.html">Home Box Style</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Pages</a>
                            <ul>
                                <li><a href="about.html">About Page</a></li>
                                <li><a href="portfolio.html">Portfolio</a>
                                    <ul>
                                        <li><a href="portfolio.html">Portfolio</a></li>
                                        <li><a href="portfolio-three-column.html">Portfolio 3 Column</a></li>
                                        <li><a href="portfolio-details.html">Portfolio Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="my-account.html">My Account</a></li>
                                <li><a href="{{ route('cart.index') }}">Cart Page</a></li>
                                <li><a href="checkout.html">Checkout Page</a></li>
                                <li><a href="wishlist.html">Wishlist Page</a></li>
                                <li><a href="error404.html">404 Page</a></li>
                                <li><a href="faq.html">Faq Page</a></li>
                                <li><a href="team.html">Team Page</a></li>
                            </ul>
                        </li>
                        <li><a href="shop-grid.html">Shop</a>
                            <ul>
                                <li><a href="shop-grid.html">Shop Grid</a></li>
                                <li><a href="shop-list.html">Shop List</a></li>
                                <li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
                                <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                <li><a href="shop-no-sidebar.html">Shop No sidebar</a></li>
                                <li><a href="single-product.html">Single Product</a></li>
                            </ul>
                        </li>
                        <li><a href="blog.html">Blog</a>
                            <ul>
                                <li><a href="blog.html">Blog Page</a></li>
                                <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                <li><a href="blog-no-sidebar.html">Blog No Sidebar</a></li>
                                <li><a href="blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- End Mobile Menu -->
        <div class="mobile-menu d-block d-lg-none">
        </div>
        <!-- Mobile Menu -->
    </div>
</header>
<!-- //Header -->
<!-- Start Search Popup -->
<div class="box-search-content search_active block-bg close__top">
    <form id="search_mini_form" class="minisearch" action="search">
        <div class="field__search">
            <input type="text" name="keyword" placeholder="Search entire store here...">
            <div class="action">
                <button><i class="zmdi zmdi-search"></i></button>
            </div>
        </div>
    </form>
    <div class="close__wrap">
        <span>close</span>
    </div>
</div>
<!-- End Search Popup -->
