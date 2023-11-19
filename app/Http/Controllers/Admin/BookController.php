<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreBookRequest;
use App\Models\Author;
use App\Models\Book;
use App\Models\Category;
use App\Models\Image_Detail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $author = Author::all();
        $books = Book::orderBy('id', 'DESC')->search()->paginate(10);
        return view("admin.books.list", compact("books",'author'));

    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $listAuthor = $this->getAuthor();
        $listCate = $this->getListCate();
        return view(
            "admin.books.create",
            [
                'listCate' => $listCate,
                'listAuthor' => $listAuthor,
            ]
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreBookRequest $request)
    {

        $book = new Book;
        $book->title_book = $request->title_book;
        $book->original_price = $request->original_price;
        $book->price = $request->price;
        $book->description = $request->description;
        $book->quantity = $request->quantity;
        $book->publish_house = $request->publish_house;
        $book->id_author = $request->id_author;
        $book->id_cate = $request->id_cate;
        if($request->hasFile('book_image')){
            $file =  $request->file('book_image');
            $extention = $file->getClientOriginalName();
            $filename = $extention;
            $file->move('storage/book/',$filename);
            $book->book_image = $filename;

        }

        $book->save();
        if ($book->save()) {
            Session::flash('success', 'Thâm thành công');
            return redirect()->route('book.index');
        } else {
            Session::flash('error', 'Thêm Lỗi');
        }
    }

    /**
     * Display the specified resource.
     */
    public function edit(Request $request, string $id)
    {
        $listCate = Category::all();
        $listAuthor = Author::all();
        $book = Book::find($id);
        if($request->isMethod('POST'))
        {
        $book->title_book = $request->title_book;
        $book->original_price = $request->original_price;
        $book->price = $request->price;
        $book->description = $request->description;
        $book->quantity = $request->quantity;
        $book->publish_house = $request->publish_house;
        $book->id_author = $request->id_author;
        $book->id_cate = $request->id_cate;
            if($request->hasFile('book_image')){
                $image_new = 'storage/book/'.$book->book_image;
                if(File::exists($image_new)){
                    File::delete($image_new);

                }
                $file =  $request->file('book_image');
                $extention = $file->getClientOriginalExtension();
                $filename = time().'.'.$extention;
                $file->move('storage/book',$filename);
                $book->book_image = $filename;

            }
            $book->update();
            if ($book->update()){
                Session::flash('success','Sửa thành công');
                return  redirect()->route('book.index');
            }
            else{
                Session::flash('error','Sửa lỗi');
            }

        }
        return view('admin.books.edit',compact('book','listCate','listAuthor'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    // public function edit(Book $book)
    // {
    //     $listCate = Category::all();
    //     $listAuthor = Author::all();


    //     return view(
    //         "admin.books.edit",
    //         [
    //             'book' => $book,
    //             'listAuthor' => $listAuthor,
    //             'listCate' => $listCate,


    //         ]
    //     );
    // }



    // public function update(Request $request, Book $book)
    // {
    //     $title_book = $request->input('title_book');
    //     $original_price = $request->input('original_price');
    //     $price = $request->input('price');
    //     $description = $request->input('description');
    //     $quantity = $request->input('quantity');
    //     $publish_house = $request->input('publish_house');
    //     $id_author = $request->input('id_author');
    //     $id_cate = $request->input('id_cate');
    //     if ($request->file('book_image') != null) {
    //         $book_image = $request->file('book_image')->getClientOriginalName(); // lấy tên file
    //         $path = $request->file('book_image')->storeAs('storage/book', $book_image); // lưu file vào đường dẫn
    //         $book->fill([
    //             'title_book' => $title_book,
    //             'original_price' => $original_price,
    //             'price' => $price,
    //             'description' => $description,
    //             'publish_house' => $publish_house,
    //             'book_image' => $book_image,
    //             'id_author' => $id_author,
    //             'id_cate' => $id_cate
    //         ])->save();
    //     } else {
    //         $book->fill([
    //             'title_book' => $title_book,
    //             'original_price' => $original_price,
    //             'price' => $price,
    //             'description' => $description,
    //             'publish_house' => $publish_house,
    //             'id_author' => $id_author,
    //             'id_cate' => $id_cate
    //         ])->save();
    //     }
    //     Book::where('id', $book->id)->update(['quantity' => $quantity,]);
    //     return redirect()->route('book.index')->with('success', '');
    // }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Book $book)
    {
        $book->delete();
        return redirect()->route('book.index')->with('success', '');
    }


    public static function getAuthor()
    {
        return Author::getListAuthor();
    }
    public static function getListCate()
    {
        return CategoryController::listCategories();
    }

    public function changeImage(Request $request)
    {
        $id = $request->input('id');
        $image = $request->file('images')->getClientOriginalName();
        $request->file('images')->storeAs('public/images', $image);
        Image_Detail::where('id', $id)->update([
            'image_path' => $image
        ]);
        Storage::delete('storage/images/' . $image);
        $id_book = $request->input('id_book');
        return redirect()->route("book.changeList", $id_book);
    }
    public function addNewImage($id)
    {
        return view('admin.books.addNewImage', ['id' => $id]);
    }
    public function addImage(Request $request)
    {
        $image_path = array();
        foreach ($request->image_detail as $value) {
            $imageName = $value->getClientOriginalName();
            $path = $value->storeAs('public/images', $imageName);
            $image_path[] = $imageName;
            $image_detail = new Image_Detail;
            $image_detail->image_path = $imageName;
            $image_detail->id_book = $request->input('id_book');
            $image_detail->save();
        }
        return redirect()->route("book.edit", $request->input('id_book'));
    }

    public function deleteImage(Request $request, $id)
    {
        $id_image = $id;
        $image_detail = DB::table("image_details")->where("id", $id)->delete();
        $old_image = $request->input('old_image');
        Storage::delete('storage/images' . $old_image);
        return redirect()->back();
    }
    public function review($id)  {
        $review = Book::find($id);
        $image = DB::table('image_details')->select('*')->where('id_book', $id)->get();
        return view('admin.books.review', ['review'=> $review,'image'=> $image]);
    }
}
