@extends('layout.layout')
@section('content')
<!-- Start breadcrumb area -->
<div class="ht__breadcrumb__area bg-image--10">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__inner text-center">
                    <h2 class="breadcrumb-title">Order</h2>
                    <nav class="breadcrumb-content">
                        <a class="breadcrumb_item" href="index.html">Home</a>
                        <span class="brd-separator">/</span>
                        <span class="breadcrumb_item active">Order</span>
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
        @if (session('message'))
        <h1 class="text-primary">{{ session('message') }}</h1>
        @endif
        <div class="row">
            <div class="col-md-12 col-sm-12 ol-lg-12">

                <div class="table-content wnro__table table-responsive">
                    <table>
                        <thead>
                            <tr class="title-top">
                                <th>Mã đơn hàng</th>
                                <th>Tổng tiền</th>
                                <th>Phương thức thanh toán</th>
                                <th>Trạng thái đơn hàng</th>
                                <th>Hoạt động</th>

                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($bills as $bill)
                            <tr>
                                <td>#{{$bill->id}}</td>
                                <td>{{number_format($bill->total, 0, '.', ',') }} đ</td>
                                <td>{{$bill->payment}}</td>
                                <td>{{$bill->status}}</td>
                                <td></td>

                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>



            </div>
        </div>

    </div>
</div>
<!-- cart-main-area end -->
@endsection
@section('script')
<script>
    $(function() {
        $(document).on("click", "btn.cancel", function(e) {
            e.preventDefault();
            let id = $(this).data("id")
            confirmDelete()
                .then(function() {
                    $(`form-cancel${id}`).submit();
                })
                .catch();
        });

    });
</script>