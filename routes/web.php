<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\RatingController;
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

// List of Books with Filter (Page 1)
Route::get('/', [BookController::class, 'listBooks'])->name('books.index');

// Top 10 Most Famous Authors (Page 2)
Route::get('/authors', [AuthorController::class, 'index'])->name('authors.index');

// Input Rating (Page 3)
Route::get('/input-rating', [RatingController::class, 'inputRating']);
Route::post('/submit-rating', [RatingController::class, 'submitRating'])->name('submit-rating');
