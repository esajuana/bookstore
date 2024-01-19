<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>

<div class="book_list">
    <h1 style="text-align: center">List of Books</h1>

    <!-- Filters -->
    <form style="text-align: center" action="{{ route('books.index') }}" method="GET">
        <label for="showFilter">Show:</label>
        <select name="show" id="showFilter">
            @for ($i = 10; $i <= 100; $i += 10)
                <option value="{{ $i }}" {{ request('show') == $i ? 'selected' : '' }}>{{ $i }}</option>
            @endfor
        </select>

        <label for="searchFilter">Search:</label>
        <input type="text" name="search" id="searchFilter" value="{{ request('search') }}">

        <button type="submit">Apply Filters</button>
    </form>

    <!-- Book List Table -->
    <table style="margin-left: auto; margin-right: auto; margin-top: 20px; margin-bottom: 20px;">
        <thead>
        <tr>
            <th>No</th>
            <th>Category Name</th>
            <th>Author Name</th>
            <th>Average Rating</th>
            <th>Voter</th>
        </tr>
        </thead>
        <tbody>
        @foreach($books as $index => $book)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $book->category->name }}</td>
                <td>{{ $book->author->name }}</td>
                <td>{{ number_format($book->average_rating, 1) }}</td>
                <td>{{ $book->voter_count }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>

{{--    <!-- Pagination Links -->--}}
{{--    <div style="text-align: center" class="links">--}}
{{--        {{ $books->links() }}--}}
{{--    </div>--}}

</div>

</body>
</html>



{{--<!DOCTYPE html>--}}
{{--<html lang="en">--}}
{{--<head>--}}
{{--    <style>--}}
{{--        table, th, td {--}}
{{--            border: 1px solid black;--}}
{{--            border-collapse: collapse;--}}
{{--        }--}}
{{--    </style>--}}
{{--</head>--}}
{{--<body>--}}

{{--    <div class="book_list">--}}
{{--        <h1 style="text-align: center">List of Books</h1>--}}

{{--        <!-- Filters -->--}}
{{--        <form style="text-align: center" action="{{ route('books.index') }}" method="GET">--}}
{{--            <!-- Category Filter -->--}}
{{--            <select name="category" id="category">--}}
{{--                <option value="">All Categories</option>--}}
{{--                @foreach($categories as $category)--}}
{{--                    <option value="{{ $category->id }}">{{ $category->name }}</option>--}}
{{--                @endforeach--}}
{{--            </select>--}}

{{--            <!-- Author Filter -->--}}
{{--            <select name="author" id="author">--}}
{{--                <option value="">All Authors</option>--}}
{{--                @foreach($authors as $author)--}}
{{--                    <option value="{{ $author->id }}">{{ $author->name }}</option>--}}
{{--                @endforeach--}}
{{--            </select>--}}

{{--            <!-- Search Filter -->--}}
{{--            <input type="text" name="search" placeholder="Search by book or author">--}}

{{--            <button type="submit">Filter</button>--}}
{{--        </form>--}}

{{--        <!-- Book List Table -->--}}
{{--        <table style="margin-left: auto; margin-right: auto; margin-top: 20px; margin-bottom: 20px;">--}}
{{--            <thead>--}}
{{--            <tr>--}}
{{--                <th>No</th>--}}
{{--                <th>Category Name</th>--}}
{{--                <th>Author Name</th>--}}
{{--                <th>Average Rating</th>--}}
{{--                <th>Voter</th>--}}
{{--            </tr>--}}
{{--            </thead>--}}
{{--            <tbody>--}}
{{--            @foreach($books as $book)--}}
{{--                <tr>--}}
{{--                    <td>{{ $loop->iteration }}</td>--}}
{{--                    <td>{{ $book->category->name }}</td>--}}
{{--                    <td>{{ $book->author->name }}</td>--}}
{{--                    <td>{{ $book->average_rating }}</td>--}}
{{--                    <td>{{ $book->ratings->count() }}</td>--}}
{{--                </tr>--}}
{{--            @endforeach--}}
{{--            </tbody>--}}
{{--        </table>--}}

{{--        <!-- Pagination Links -->--}}
{{--        <div style="text-align: center" class="links">--}}
{{--            {{ $books->links() }}--}}
{{--        </div>--}}

{{--    </div>--}}

{{--</body>--}}
{{--</html>--}}
