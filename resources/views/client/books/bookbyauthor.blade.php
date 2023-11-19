@extends('layout.layout')
@section('content')

    <!-- Start breadcrumb area -->
    <div class="ht__breadcrumb__area bg-image--10">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__inner text-center">
                        <h2 class="breadcrumb-title">Shop Grid</h2>
                        <nav class="breadcrumb-content">
                            <a class="breadcrumb_item" href="index.html">Home</a>
                            <span class="brd-separator">/</span>
                            <span class="breadcrumb_item active">Shop Grid</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End breadcrumb area -->
    <!-- Start Shop Page -->
    <div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
                    <div class="shop__sidebar">
                        <aside class="widget__categories products--cat">
                            <h3 class="widget__title">danh mục sách</h3>
                            <ul>
                                @foreach ($cate as $cate)
                                    <li><a href="{{ route('show.bookbycate', $cate->id) }}">{{ $cate->cate_Name }}</a></li>
                                @endforeach


                            </ul>
                        </aside>
                        <aside class="widget__categories products--cat">
                            <h3 class="widget__title">Tìm theo tác giả</h3>
                            <ul>
                                @foreach ($authors as $au)
                                    <li><a href="{{ route('show.bookbyauthor', $au->id) }}">{{ $au->name_author }}</a></li>
                                @endforeach


                            </ul>
                        </aside>
                      
                        
                    </div>
                </div>
                <div class="col-lg-9 col-12 order-1 order-lg-2">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
                                <div class="shop__list nav justify-content-center" role="tablist">
                                    <a class="nav-item nav-link active" data-bs-toggle="tab" href="#nav-grid"
                                        role="tab"><i class="fa fa-th"></i></a> <h3 class="mb-4">Sản phẩm thuộc tác giả: <span class="text-danger">{{ $author->name_author }}</span></h3>
                                   
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="tab__container tab-content">
                        <div class="shop-grid tab-pane fade show active" id="nav-grid" role="tabpanel">
                            <div class="row">
                                @foreach ($book as $data)
                                    <!-- Start Single Product -->
                                    <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
                                        <div class="product__thumb">
                                            <a class="first__img" href="{{ route('book.detail', $data->id) }}"><img
                                                    style="height: 250px; object-fit: cover"
                                                    src="{{ asset('storage/book/' . $data->book_image) }}"
                                                    alt="product image"></a>
                                           
                                            
                                        </div>
                                        <div class="product__content content--center">
                                            <h4><a href="{{ route('book.detail', $data->id) }}">{{$data->title_book}}</a></h4>
                                            <ul class="price d-flex">
                                                <li>{{number_format($data->price, 0, '.', ',') }} đ</li>
                                                <li class="old_price">{{number_format($data->original_price, 0, '.', ',') }} đ</li>
                                            </ul>
                                            <div class="action">
                                                <div style=" display: flex;" class="actions_inner">
                                                    <ul class="add_to_links">
                                                      
                                                       <form action="">
                                                       <li><a class="wishlist" href="{{ route('client.carts.add') }}"><i
                                                                    class="bi bi-shopping-cart-full"></i></a></li>
                                                       </form>
                                                        
                                                        <form action="">
                                                        <li><a
                                                                class="quickview modal-view detail-link"
                                                                href="{{ route('book.detail', $data->id) }}"><i class="bi bi-search"></i></a>
                                                        </li>
                                                        </form>
                                                    </ul>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <!-- End Single Product -->
                                @endforeach
                            </div>


                        

                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Shop Page -->
@endsection
