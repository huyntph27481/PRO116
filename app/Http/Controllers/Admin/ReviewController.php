<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use App\Models\Book;
use App\Models\Review;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ReviewController extends Controller
{
    public function index(){
        $review =  Review::with('user', 'book')->get();
        $user = User::all();
        $book = Book::all();
        return view('admin.review.list',compact('review','user','book'));
    }

    public function delete(string $id){
        $authors = Review::find($id)->delete();
        if($authors){
            Session::flash('success','Xóa thành công');
            return redirect()->route('review.index');
        }
        else{
            Session::flash('error','Xóa lỗi');
        }
    }

}
