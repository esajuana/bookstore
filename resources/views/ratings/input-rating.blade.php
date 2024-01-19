<!DOCTYPE html>
<html lang="en">
<head>
    <style>

    </style>
</head>
<body>

<h1>Input Rating</h1>

<form action="{{ route('submit-rating') }}" method="post">
    @csrf

    <div class="author">
        <label style="margin-right: 10px; padding: 10px" for="author">Select Author:</label>
        <select name="author" id="author">
            @foreach ($authors as $author)
                <option value="{{ $author->id }}">{{ $author->name }}</option>
            @endforeach
        </select>
    </div>

    <div class="book">
        <label style="margin-right: 25px; padding: 10px" for="book">Select Book:</label>
        <select name="book" id="book"></select>
    </div>

    <div class="rating">
        <label style="margin-right: 20px; padding: 10px" for="rating">Select Rating:</label>
        <select name="rating" id="rating">
            @for ($i = 1; $i <= 10; $i++)
                <option value="{{ $i }}">{{ $i }}</option>
            @endfor
        </select>
    </div>


    <input type="hidden" name="author_id" id="hidden-author-id" value="">

    <button style="margin: 10px" type="submit">Submit Rating</button>
</form>

<script>
    var authorsBooks = @json($authors->pluck('books', 'id')->toArray());
    var bookSelect = document.getElementById('book');
    var hiddenAuthorId = document.getElementById('hidden-author-id');

    document.getElementById('author').addEventListener('change', function () {
        var authorId = this.value;
        hiddenAuthorId.value = authorId; // Set the hidden input value

        bookSelect.innerHTML = '';

        if (authorsBooks[authorId]) {
            authorsBooks[authorId].forEach(function (book) {
                var option = document.createElement('option');
                option.value = book.id;
                option.textContent = book.name;
                bookSelect.appendChild(option);
            });
        }
    });

    // Trigger the change event on page load to initialize the book dropdown
    document.getElementById('author').dispatchEvent(new Event('change'));
</script>

</body>
</html>
