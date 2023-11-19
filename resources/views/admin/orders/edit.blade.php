@extends('layoutadmin.layout')

@section('content')

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid my-2">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Edit</h1>
                    </div>
                    <div class="col-sm-6 text-right">
                        <a href="products.html" class="btn btn-primary">Back</a>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- Main content -->
        <section class="content">
            <!-- Default box -->
            <div class="container-fluid">
                <form action="{{route('order.edit',$order->id)}}" method="POST" enctype="multipart/form-data" >
                    @csrf
                <div class="row">
                    <div class="col-md-8">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <label for="title">Trạng thái đơn hàng</label>
                                           <select name="status" id="">Trạng thái đơn hàng
                                            <option value="{{$order->status}}" >{{$order->status}}</option>
                                            <option value="Đã nhận đơn">Đã nhận đơn</option>
                                            <option value="Đang giao">Đang giao</option>
                                            <option value="Hoàn thành">Hoàn thành</option>
                                           </select>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="pb-5 pt-3">
                            <button class="btn btn-primary">Update</button>
                            <a href="products.html" class="btn btn-outline-dark ml-3">Cancel</a>
                        </div>
                </div>


            </div>
                </form>
            </div>
            <!-- /.card -->
        </section>
        <!-- /.content -->
    </div>
@endsection
