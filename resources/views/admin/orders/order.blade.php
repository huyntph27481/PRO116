@extends('layoutadmin.layout')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid my-2">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Orders</h1>
                </div>
                <div class="col-sm-6 text-right">
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="container-fluid">
            <div class="card">
                <div class="card-header">
                    <div class="card-tools">
                        <div class="input-group input-group" style="width: 250px;">
                            <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                            <div class="input-group-append">
                              <button type="submit" class="btn btn-default">
                                <i class="fas fa-search"></i>
                              </button>
                            </div>
                          </div>
                    </div>
                </div>
                <div class="card-body table-responsive p-0">
                    <table class="table table-hover text-nowrap">
                        <thead>
                            <tr>
                            <th class="px-4 py-3">ID</th>
                            <th class="px-4 py-3">Name</th>
                            <th class="px-4 py-3">Email</th>
                            <th class="px-4 py-3">Address</th>
                            <th class="px-4 py-3">Phone</th>
                            <th class="px-4 py-3">Total</th>
                            <th class="px-4 py-3">Pttt</th>
                            <th class="px-4 py-3">Status</th>
                            <th class="px-4 py-3">Cart_id</th>
                            <th class="px-4 py-3">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach ($bills as $bill)
                        <tr class="text-gray-700 dark:text-gray-400">
                            <td class="px-4 py-3 text-sm">
                                {{$bill->id}}
                            </td>
                            <td class="px-4 py-3 text-xs">
                                <p class="textt">{{$bill->name}}</p>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <p class="text-name">{{$bill->email}}</p>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <p class="text-name">{{$bill->address}}</p>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                {{$bill->phone}}
                            </td>
                            <td class="px-4 py-3 text-sm">
                                ${{$bill->total}}
                            </td>
                            <td class="px-4 py-3 text-sm">
                                {{$bill->payment}}
                            </td>
                            <td class="px-4 py-3 text-sm">
                                {{$bill->status}}
                            </td>
                            <td class="px-4 py-3 text-sm">
                               
                            </td>

                            <td class="px-4 py-3">
                               
                            </td>
                        </tr>
                        @endforeach
                            
                        </tbody>
                    </table>
                </div>
                <div class="card-footer clearfix">
                    <ul class="pagination pagination m-0 float-right">
                      <li class="page-item"><a class="page-link" href="#">«</a></li>
                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item"><a class="page-link" href="#">»</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /.card -->
    </section>
    <!-- /.content -->
</div>

<script>
function importCSS(url) {
    var link = document.createElement("link");
    link.rel = "stylesheet";
    link.href = url;
    document.getElementsByTagName("head")[0].appendChild(link);
}
importCSS("assets/css/textcontent.css");
</script>   
@endsection
