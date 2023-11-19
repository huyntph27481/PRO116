@extends('layout.layout')
@section('content')
    <!-- Start breadcrumb area -->
    <div class="ht__breadcrumb__area bg-image--10">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__inner text-center">
                        <h2 class="breadcrumb-title">Shopping Cart</h2>
                        <nav class="breadcrumb-content">
                            <a class="breadcrumb_item" href="index.html">Home</a>
                            <span class="brd-separator">/</span>
                            <span class="breadcrumb_item active">Shopping Cart</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End breadcrumb area -->
    <!-- cart-main-area start -->
    <div class="cart-main-area section-padding--lg bg--white">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 ol-lg-12">

                    <div class="table-content wnro__table table-responsive">
                        <table>
                            <thead>
                                <tr class="title-top">
                                    <th class="product-thumbnail">Ảnh</th>
                                    <th class="product-name">Sản phẩm</th>
                                    <th class="product-price">Giá</th>
                                    <th class="product-quantity">Số lượng</th>
                                    <th class="product-subtotal">Tổng</th>
                                    <th class="product-remove">Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($carts as $cart)
                                    <tr>
                                        <td class="product-thumbnail"><a href="#"><img
                                                    src="{{ asset('storage/book/' . $cart->book_image) }}"
                                                    alt="product img"></a></td>

                                        <td style="padding-top: 20px" class="product-name"><a
                                                href="#">{{ $cart->title_book }}</a>
                                        </td>
                                        <td class="product-price"><span class="amount">{{ $cart->money }}đ</span>
                                        </td>
                                        <td class="product-quantity">

                                            <form action="{{ route('cart.updateCart', $cart->id) }}" method="post">
                                                @csrf
                                                @method('PUT')
                                                <input name="quantity" type="number" value="{{ $cart->quantity }}"> <button
                                                    class="update" type="submit"><svg xmlns="http://www.w3.org/2000/svg"
                                                        width="16" height="16" fill="currentColor"
                                                        class="bi bi-arrow-counterclockwise" viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd"
                                                            d="M8 3a5 5 0 1 1-4.546 2.914.5.5 0 0 0-.908-.417A6 6 0 1 0 8 2v1z" />
                                                        <path
                                                            d="M8 4.466V.534a.25.25 0 0 0-.41-.192L5.23 2.308a.25.25 0 0 0 0 .384l2.36 1.966A.25.25 0 0 0 8 4.466z" />
                                                    </svg></button>
                                            </form>
                                        </td>
                                        <td class="product-subtotal">{{ $cart->money * $cart->quantity }}đ</td>

                                        <td class="product-remove">
                                            <a href="{{ route('cart.delete', $cart->id) }}"><i class="fa fa-times"></i></a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>

                    <div class="cartbox__btn">
                        <ul class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
                           
                            <li><a href="{{ route('cart.checkout') }}">Tiếp tục thanh toán</a></li>
                        </ul>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 offset-lg-6">
                    <div class="cartbox__total__area">
                        <div class="cartbox-total d-flex justify-content-between">
                            @php
                                $total = 0;

                            @endphp
                            @foreach ($carts as $cart)
                                @php
                                    $total += $cart->money * $cart->quantity;
                                @endphp
                            @endforeach
                            
                        </div>
                        <div class="cart__total__amount">
                            <span>Tổng cộng</span>
                            <span>{{ $total }}đ</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- cart-main-area end -->
@endsection
