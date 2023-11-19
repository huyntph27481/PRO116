<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\UserController as AdminUserController;
use App\Http\Controllers\Admin\BookController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Client\UserController;
use App\Http\Controllers\Client\BookController as ClientBookController;
use App\Http\Controllers\Client\CartController;
use App\Http\Controllers\Client\SearchController;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('index');
})->name('home');
Route::get('/admin', function () {
    return view('admin');
})->name('admin');


//Client
Route::get('/', function () {
    return view('index');
})->name('home');
// Show book
Route::get('/show', [ClientBookController::class, 'show'])->name('books.show');
Route::get('/detail/{id}', [ClientBookController::class, 'detailBook'])->name('book.detail');
Route::get('view-category/{slug}', [ClientBookController::class, 'viewcategory']);

//contact

Route::get('contact', function () {
    return view('client.contact.contact');
})->name('contact');

//blog
Route::get('blog', function () {
    return view('client.blog.blog');
})->name('blog');


// Customer
Route::get('/signin', [UserController::class, 'signin'])->name('signin');
Route::post('/signin', [UserController::class, 'signinPost'])->name('signin.post');
Route::get('/signup', [UserController::class, 'signup'])->name('signup');
Route::post('/signup', [UserController::class, 'signupPost'])->name('signup.post');
Route::get('/logout', [UserController::class, 'logout'])->name('logout');
//cart
route::middleware('auth')->group(function () {
    Route::get('/cart', [CartController::class, 'index'])->name('cart.index');
    Route::get('/deleteCart/{id}', [CartController::class, 'deleteCart'])->name('cart.delete');
    Route::put('/updateCart/{id}', [CartController::class, 'updateCart'])->name('cart.updateCart');
    Route::post('/add-to-cart', [CartController::class, 'store'])->name('client.carts.add');
    Route::get('/checkout', [CartController::class, 'checkout'])->name('cart.checkout');
    Route::post('/process-payment', [CartController::class, 'processCheckout'])->name('checkout.proccess');
    Route::post('/VNPayMent', [CartController::class, 'vnpay_payment'])->name('vnpay_payment');
    //    Route::post('/remove-book/{id}',[CartController::class,'removeBookInCart'])->name('carts.remove_book');
    //order
    Route::get('/order', [OrderController::class, 'index'])->name('client.order.index');

    //review
    Route::match(['get', 'post'], '/post-review', [\App\Http\Controllers\Client\ReviewController::class, 'postReview'])->name('post.review');
});





/////////////////////////////////////////////////////////////////////////////////
//Lay lai password
Route::get('/forget-password', [UserController::class, 'forgetPassword'])->name('forget.password');
Route::post('/forget-password', [UserController::class, 'forgetPasswordPost'])->name('forget.password.post');
Route::get('/reset-password/{token}', [UserController::class, 'resetPassword'])->name('reset.password');
Route::post('/reset-password', [UserController::class, 'resetPasswordPost'])->name('reset.password.post');

/////////////////////////////////////////////////////////////////////////////
// Sau khi đăng nhập
Route::prefix('/')->middleware('auth')->group(function () {
    Route::get('/my-account/detail', [UserController::class, 'showDetail'])->name('my.account.detail');
    Route::post('/my-account/detail', [UserController::class, 'editDetail'])->name('my.account.detail.post');
    Route::get('/my-account/changePass', [UserController::class, 'showPass'])->name('my.account.pass');
    Route::post('/my-account/changePass', [UserController::class, 'changePass'])->name('my.account.pass.post');
    Route::get('/order', [\App\Http\Controllers\Client\OrderController::class, 'show'])->name('client.order.index');
});

////////////////////////////////////////////////////////////////////////////////////
// Admin
Route::get('/loginAdmin', [AdminController::class, 'login'])->name('login');
Route::post('/login', [AdminController::class, 'loginPost'])->name('login.post');
Route::get('/logoutAdmin', [AdminController::class, 'logout'])->name('logoutAdmin');


///////////////////////////////////////////////////////////////////////////////////
//Sau khi đăng nhập role admin
Route::prefix('admin')->middleware('admin')->group(function () {
    Route::get('/', function () {
        return view('admin');
    })->name('admin');

    // User
    Route::get('/users', [AdminUserController::class, 'index'])->name('users.list');
    Route::get('/create-user', [AdminUserController::class, 'createUser'])->name('users.create');
    Route::post('/create-user', [AdminUserController::class, 'createUserPost'])->name('users.create.post');
    Route::get('/edit-user/{id}', [AdminUserController::class, 'editUser'])->name('users.edit');
    Route::post('/edit-user/{id}', [AdminUserController::class, 'editUserPost'])->name('users.edit.post');
    Route::get('/delete-user/{id}', [AdminUserController::class, 'deleteUser'])->name('users.delete');


    //order
    Route::get('/order', [OrderController::class, 'index'])->name('order.index');

    // Category
    Route::resource('category', CategoryController::class);

    // Book
    Route::resource('book', BookController::class);
    Route::get('/index', [\App\Http\Controllers\Admin\BookController::class, 'index'])->name('book.index');
    Route::match(['get', 'post'], '/edit-book/{id}', [\App\Http\Controllers\Admin\BookController::class, 'edit'])->name('book.edit');


    //authors
    Route::get('/authors', [\App\Http\Controllers\Admin\AuthorsController::class, 'index'])->name('list.authors');
    Route::match(['get', 'post'], '/create-authors', [\App\Http\Controllers\Admin\AuthorsController::class, 'add'])->name('authors.create');
    Route::match(['get', 'post'], '/delete-authors/{id}', [\App\Http\Controllers\Admin\AuthorsController::class, 'delete'])->name('authors.delete');
    Route::match(['get', 'post'], '/edit-authors/{id}', [\App\Http\Controllers\Admin\AuthorsController::class, 'edit'])->name('authors.edit');

});
    // Tìm kiếm sách theo tên sách
    Route::resource('search', SearchController::class);
    Route::get('search', [SearchController::class, 'searchKey']);
    Route::get('/search', [SearchController::class, 'searchKey'])->name('search.key');
