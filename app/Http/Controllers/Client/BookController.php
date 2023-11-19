<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Author;
use App\Models\Book;
use App\Models\Category;
use App\Models\Image_Detail;
use App\Models\Review;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{


    public function index(){
        $datas = Book::orderBy('id','DESC')->paginate(10);
        $cate = Category::all();
        $authors = Author::all();
        return view("client.books.books",compact('cate','datas','authors'));
    }
    public function detailBook(Request $request , string $id ){
        $data = Book::find($id);
        $cate = Category::all();
        $authors = Author::all();
        $comment = Review::with('user')->where('id_book',$id)->get();
        $user = User::all();
        $same = DB::table('books')->select('*')->where('id_cate',$data->id_cate)->get();

        return view("client.books.detail",compact('data','cate','comment','same','user','authors'));
    }
    public function viewcategory($slug) {

        if(Category::where('slug',$slug)->exists())
        {
            $category = Category::all();
            $cate =Category::where('slug',$slug)->first();
            $products = Book::where('id_cate', $cate->id)->get();
            return view('client.books.filter', compact('cate','products','category'));
        }
        // else{
        //     return redirect('/')->with('status',"Slug doesnot exists");
        // }

    }

    public function showBooksByCategory( Request $request , string $id)
    {
        $category = Category::find($id);
        $cate = Category::all();
        $authors = Author::all();
        $book = Book::where('id_cate', $id)->get();
        return view('client.books.bookbycate',compact('cate', 'book','category','authors'));
    }

    public function showBooksByAuthor( Request $request , string $id)
    {
        $author = Author::find($id);
        $cate = Category::all();
        $authors = Author::all();
        $book = Book::where('id_author', $id)->get();
        return view('client.books.bookbyauthor',compact('cate', 'book','author','authors'));
    }

}
