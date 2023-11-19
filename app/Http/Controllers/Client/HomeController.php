<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Author;
use App\Models\Book;
use App\Models\Category;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function show(){
        $datas = Book::orderBy('id','DESC')->paginate(10);
        $cate = Category::all();
        $authors = Author::all();
        return view("index",compact("cate",'datas','authors'));
    }

    public function showProductsByCategory( Request $request , string $id)
    {
        $cate = Category::find($id);
        $book = Book::where('id_cate', $id)->get();
        return view('home.product.product',compact('cate', 'book'));
    }
}
