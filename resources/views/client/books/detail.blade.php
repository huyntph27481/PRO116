@extends('layout.layout')
@section('content')
<!-- Start breadcrumb area -->
<div class="ht__breadcrumb__area bg-image--10">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__inner text-center">
                    <h2 class="breadcrumb-title">Shop Single</h2>
                    <nav class="breadcrumb-content">
                        <a class="breadcrumb_item" href="{{ route('books.show') }}}">Home</a>
                        <span class="brd-separator">/</span>
                        <span class="breadcrumb_item active">Shop Single</span>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End breadcrumb area -->
<!-- Start main Content -->
<div class="maincontent bg--white pt--80 pb--55">
    @if (session('message'))
    <h2 style="color:red; width:100%;text-align:center">{{ session('message') }}</h2>
    @endif
    <div class="container">
        <form action="{{ route('client.carts.add') }}" method="POST">
            @csrf
            <input type="hidden" name="book_id" value="{{$data->id}}">
            <div class="row">
                <div class="col-lg-9 col-12">
                    <div class="wn__single__product">
                        <div class="row">
                            <div class="col-lg-6 col-12">
                                <div class="wn__fotorama__wrapper">
                                    <div class="fotorama wn__fotorama__action" data-nav="thumbs">

                                        <a href=""><img src="{{ asset('storage/book/' . $data->book_image) }}" alt=""></a>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="product__info__main">
                                    <h1 style="font-weight: normal;" >{{ $data->title_book }}</h1>

                                    <div class="price-box">
                                        <span style="color: red;" >{{number_format($data->price, 0, '.', ',') }} đ</span>
                                    </div>
                                    <div class="product__overview">
                                        <span class="posted_in">Tác giả :
                                            <a href="">
                                                <p>{{ $authors->find($data->id_author)->name_author}}</p>
                                            </a>
                                        </span>

                                        <span class="posted_in">Danh Mục:
                                            <a href="">
                                                <p>{{ $cate->find($data->id_cate)->cate_Name }}</p>
                                            </a>
                                        </span>

                                        <span class="posted_in">Nhà Xuất Bản:
                                            <a href="">
                                                <p>{{$data->publish_house}}</p>
                                            </a>
                                        </span>

                                    </div>

                                  


                                    <div class="box-tocart d-flex">
                                        <span>Số lượng</span>
                                        @if ($data->quantity > 0)
                                        <input id="qty" class="input-text qty" name="qty" min="1" max="{{ $data->quantity }}" value="1" title="Qty" type="number">
                                        @else
                                        <p>Hết Hàng</p>
                                        @endif

                                        <div class="addtocart__actions">
                                            <button class="tocart" type="submit" title="Add to Cart"><i class="fa fa-shopping-cart mr-1"></i> Add to
                                                Cart
                                            </button>
                                        </div>

                                    </div>

                                    <div class="product-share">
                                        <ul>
                                            <li class="categories-title">Share :</li>
                                            <li>
                                                <a href="#">
                                                    <i class="icon-social-twitter icons"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="icon-social-tumblr icons"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="icon-social-facebook icons"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="icon-social-linkedin icons"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        </form>
        <div class="product__info__detailed">
            <div class="pro_details_nav nav justify-content-start" role="tablist">
                <a class="nav-item nav-link active" data-bs-toggle="tab" href="#nav-details" role="tab">Mô tả</a>
                <a class="nav-item nav-link" data-bs-toggle="tab" href="#nav-review" role="tab">Đánh giá</a>
            </div>
            <div class="tab__container tab-content">
                <!-- Start Single Tab Content -->
                <div class="pro__tab_label tab-pane fade show active" id="nav-details" role="tabpanel">
                    <div class="description__attribute">
                        <h4>Thông tin sản phẩm</h4>
                        <table>

                            <tr>
                                <td>Mã sách</td>
                                <td>#{{$data->id}}</td>
                            </tr>

                            <tr>
                                <td>Tên sách</td>
                                <td>{{$data->title_book}}</td>
                            </tr>

                            <tr>
                                <td>Tác giả</td>
                                <td>{{ $authors->find($data->id_author)->name_author}}</td>
                            </tr>

                            <tr>
                                <td>Nhà xuất bản</td>
                                <td>{{$data->publish_house}}</td>
                            </tr>

                            <tr>
                                <td>Danh mục</td>
                                <td>{{ $cate->find($data->id_cate)->cate_Name }}</td>
                            </tr>

                        </table>
                        <span>Thông tin thêm</span>
                        {{$data->description}}

                    </div>
                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class="pro__tab_label tab-pane fade" id="nav-review" role="tabpanel">
                    <div class="review__attribute">
                        <h1>Người dùng đánh giá</h1>
                        <div style="max-height:500px;overflow-y:auto; border:1px solid #efefef;border-radius:5px">
                            @foreach($comment as $cm)
                            <div class="card-body col-lg-11" style="margin-top: 20px;margin-left:40px;margin-bottom:15px; border:1px solid white ; border-radius:5px ;box-shadow:0 0 3px black;">
                                <div class="align-items-center">
                                    <div>

                                        <p class="text-muted small">
                                            {{$cm->created_at}}
                                        </p>
                                    </div>
                                </div>

                                <h6 class="fw-bold mb-1">
                                    {{ $user->find($cm->id_customer)->name }}:
                                </h6>
                                {{$cm->content}}
                            </div>
                            @endforeach
                        </div>

                    </div>
                    <div class="review-fieldset">
                        <h2>Bạn đang đánh giá:</h2>
                        <h3>{{$data->title_book}}</h3>

                        <div class="review_form_field">

                            <div class="input__box">
                                <form action="{{route('post.review')}}" enctype="multipart/form-data" method="POST">
                                    @csrf
                                    <div class="input__box">
                                        <span>Review</span>
                                        <textarea name="content"></textarea>
                                    </div>

                                    <input type="hidden" class="form-control" name="id_book" id="id_book" value="{{ $data->id }}">
                                    <div class="review-form-actions">
                                        <button>Gửi bình luận</button>
                                    </div>
                                </form>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Tab Content -->
                </div>
            </div>
            <div class="wn__related__product pt--80 pb--50">
                <div class="section__title text-center">
                    <h2 class="title__be--2">SẢN PHẨM LIÊN QUAN</h2>
                </div>
                <div class="row mt--60">
                    <div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
                        @foreach ($same as $same)
                        <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
                            <div class="product__thumb">
                                <a class="first__img" href="{{ route('book.detail', $same->id) }}"><img style="height: 250px; object-fit: cover" src="{{ asset('storage/book/' . $same->book_image) }}" alt="product image"></a>
                                <a class="second__img animation1" href="{{ route('book.detail', $same->id) }}"><img src="images/books/2.jpg" alt="product image"></a>
                                <div class="hot__box">
                                    <span class="hot-label">BEST SALLER</span>
                                </div>
                            </div>
                            <div class="product__content content--center">
                                <h4><a href="{{ route('book.detail', $same->id) }}">{{ $same->title_book }}</a></h4>
                                <ul class="price d-flex">
                                    <li>${{ $same->price }}</li>
                                    <li class="old_price">${{ $same->original_price }}</li>
                                </ul>
                                <div class="action">
                                    <div class="actions_inner">
                                        <ul class="add_to_links">
                                            <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a></li>
                                            <li><a class="wishlist" href="wishlist.html"><i class="bi bi-shopping-cart-full"></i></a></li>
                                            <li><a class="compare" href="#"><i class="bi bi-heart-beat"></i></a></li>
                                            <li><a data-bs-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product__hover--content">
                                    <ul class="rating d-flex">
                                        <li class="on"><i class="fa fa-star-o"></i></li>
                                        <li class="on"><i class="fa fa-star-o"></i></li>
                                        <li class="on"><i class="fa fa-star-o"></i></li>
                                        <li><i class="fa fa-star-o"></i></li>
                                        <li><i class="fa fa-star-o"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>

        </div>
        <div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
            <div class="shop__sidebar">
                <aside class="widget__categories sidebar--banner">

                    <div class="text">
                        <h2>new products</h2>
                        <h6>save up to <br> <strong>40%</strong>off</h6>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</div>
</div>
<!-- End main Content -->
<!-- Start Search Popup -->
<div class="box-search-content search_active block-bg close__top">
    <form id="search_mini_form--2" class="minisearch" action="{{route('search.key')}}">
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
@endsection