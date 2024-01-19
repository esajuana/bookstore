<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Book;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
    public function listBooks(Request $request)
    {
        $query = Book::with(['category', 'author'])
            ->select(
                'books.*',
                DB::raw('(SELECT AVG(rating) FROM ratings WHERE book_id = books.id) as average_rating'),
                DB::raw('(SELECT COUNT(DISTINCT id) FROM ratings WHERE book_id = books.id) as voter_count')
            )
            ->orderByDesc('average_rating');

        if ($request->has('show')) {
            $query->take($request->input('show'));
        }

        if ($request->has('search')) {
            $searchTerm = $request->input('search');
            $query->where(function ($q) use ($searchTerm) {
                $q->where('books.title', 'like', "%$searchTerm%")  // Corrected column name
                ->orWhereHas('author', function ($q) use ($searchTerm) {
                    $q->where('authors.name', 'like', "%$searchTerm%");  // Corrected column name
                });
            });
        }

        $books = $query->get();

        return view('books.index', compact('books'));
    }
}


//
//namespace App\Http\Controllers;
//
//use Illuminate\Support\Facades\DB;
//use App\Models\Book;
//use App\Models\Author;
//use App\Models\BookCategory;
//use Illuminate\Http\Request;
//
//class BookController extends Controller
//{
//    public function index()
//    {
//        $books = Book::with(['author', 'category', 'ratings'])
//            ->select(
//                'books.*',
//                DB::raw('(SELECT AVG(rating) FROM ratings WHERE book_id = books.id) as average_rating')
//            )
//            ->orderByDesc('average_rating')
//            ->paginate(10);
//
//        $authors = Author::all();
//        $categories = BookCategory::all();
//
//        return view('books.index', compact('books', 'authors', 'categories'));
//    }
//
//}
//
//
