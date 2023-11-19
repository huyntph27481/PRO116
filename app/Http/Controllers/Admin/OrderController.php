<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    public function index(){
        $bills = DB::table('orders')->get();
        $perPage = 5; // số bản ghi trên mỗi trang
        $currentPage = Paginator::resolveCurrentPage('page');
        $bills = DB::table('orders')->paginate($perPage, ['*'], 'page', $currentPage);
        return view("admin.orders.order",compact('bills'));
    }
}
