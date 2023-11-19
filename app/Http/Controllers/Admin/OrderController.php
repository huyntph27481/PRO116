<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class OrderController extends Controller
{
    public function index(){
        $bills = DB::table('orders')->get();
        $perPage = 5; // số bản ghi trên mỗi trang
        $currentPage = Paginator::resolveCurrentPage('page');
        $bills = DB::table('orders')->paginate($perPage, ['*'], 'page', $currentPage);
        return view("admin.orders.order",compact('bills'));
    }
    public function edit(Request $request , string $id){
        $order = Order::find($id);
        if ($request->isMethod('POST')) {
            $order->status = $request->status;


            $order->update();
            if ($order->update()) {
                Session::flash('success', 'Sửa thành công');
                return redirect()->route('order.index');
            } else {
                Session::flash('error', 'Sửa lỗi');
            }

        }
        return view('admin.orders.edit',compact('order'));
    }

    public function delete(Request $request , string $id){
        $order = Order::find($id)->delete();
        if($order){
            Session::flash('success','Xóa thành công');
            return redirect()->route('order.index');
        }
        else{
            Session::flash('error','Xóa lỗi');
        }
    }
}
