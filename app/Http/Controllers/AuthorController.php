<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Rating;
use Illuminate\Support\Facades\DB;

class AuthorController extends Controller
{

    public function index()
    {
        $authors = Author::select(
            'authors.*',
            DB::raw('(SELECT COUNT(DISTINCT id) FROM ratings WHERE author_id = authors.id AND rating > 5) as voter_count')
        )
            ->withCount('ratings')
            ->having('voter_count', '>', 0)  // Only authors with at least one vote with rating > 5
            ->orderByDesc('voter_count')
            ->take(10)
            ->get();

        return view('authors.index', compact('authors'));
    }
}



//
//// app/Http/Controllers/AuthorController.php
//
//namespace App\Http\Controllers;
//
//
//    use Illuminate\Support\Facades\DB;
//    use App\Models\Author;
//    use App\Models\Rating;
//    use App\Models\Book;
//    use Illuminate\Http\Request;
//
//class AuthorController extends Controller
//{
//    public function index()
//    {
//        $topAuthors = Author::select('authors.id', 'authors.name', DB::raw('SUM(ratings.rating) as voter_count'))
//            ->join('ratings', 'authors.id', '=', 'ratings.author_id')
//            ->groupBy('authors.id', 'authors.name')
//            ->orderByDesc('voter_count')
//            ->limit(10)
//            ->get();
//
//        return view('authors.index', compact('topAuthors'));
//    }
//
//}
