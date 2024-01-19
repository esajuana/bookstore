<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Rating;
use App\Models\Author;
use App\Models\Book;

class RatingController extends Controller
{
    public function inputRating()
    {
        $authors = Author::with('books')->get();

        return view('ratings.input-rating', compact('authors'));
    }

    public function submitRating(Request $request)
    {
        $request->validate([
            'author_id' => 'required|exists:authors,id',
            'book' => 'required|exists:books,id',
            'rating' => 'required|integer|min:1|max:10',
        ]);

        Rating::create([
            'author_id' => $request->input('author_id'),
            'book_id' => $request->input('book'),
            'rating' => $request->input('rating'),
        ]);

        return redirect('/');
    }
}



//
//// app/Http/Controllers/RatingController.php
//
//namespace App\Http\Controllers;
//
//use App\Models\Book;
//use App\Models\Rating;
//use App\Models\Author;
//use Illuminate\Http\Request;
//
//class RatingController extends Controller
//{
//    public function showRatingForm()
//    {
//        $authors = Author::all();
//        $books = Book::all();
//
//        return view('ratings.rating-form', compact('authors', 'books'));
//    }
//
//    public function submitRating(Request $request)
//    {
//        // Validate the form data
//        $request->validate([
//            'author_id' => 'required|exists:authors,id',
//            'book_id' => 'required|exists:books,id',
//            'rating' => 'required|integer|min:1|max:10',
//        ]);
//
//        // Save the rating
//        Rating::create([
//            'author_id' => $request->author_id,
//            'book_id' => $request->book_id,
//            'rating' => $request->rating,
//        ]);
//
//        // Redirect back to the list of books
//        return redirect()->route('books.index')->with('success', 'Rating submitted successfully.');
//    }
//}
