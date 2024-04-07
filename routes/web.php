<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home')->middleware('CheckBlocked');

Route::prefix('admin')->middleware(['auth', 'CheckAdmin'])->group(function() {
    Route::get('/dashboard', [App\Http\Controllers\Admin\DashboardController::class, 'index']);
});

Route::get('/', [App\Http\Controllers\Front\PostController::class, 'index']);
Route::get('/delete-post/{post_id}', [App\Http\Controllers\Front\PostController::class, 'delete']);


