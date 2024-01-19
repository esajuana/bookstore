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

    <h1 style="text-align: center">Top 10 Most Famous Authors</h1>

    <table style="margin-left: auto; margin-right: auto; margin-top: 20px; margin-bottom: 20px;">
        <thead>
        <tr>
            <th>No</th>
            <th>Author</th>
            <th>Voter</th>
        </tr>
        </thead>
        <tbody>
        @foreach($authors as $author)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $author->name }}</td>
                <td>{{ $author->voter_count }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>

</body>
</html>
