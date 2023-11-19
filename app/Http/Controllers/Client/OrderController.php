<?php

namespace App\Http\Controllers\Client;
use App\Models\Book;
use App\Models\Cart;
use App\Models\Customer;
use App\Models\Order;
use App\Models\User;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;


use Illuminate\Http\Request;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function show()
    {

        $user = Auth::user();
        if(Auth::check()){
            $bills = Order::where('id_customer ', $user->id)->get();
            return view('client.orders.index', compact('bills'));
        }else{
            return redirect()->to('/login');
        }
    }




    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */


    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
