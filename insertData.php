<?php
require "./conn.php";

$doc = new DOMDocument();

foreach (glob("./books/*/*.xml") as $filename) {

    $doc->load($filename);
    $intros = $doc->getElementsByTagName("book");
    foreach ($intros as $intro) {
        // echo "<br />";
        $author = $intro->getAttribute('author');
        $book = $intro->getAttribute('name');
        // echo $author;
        // echo "<br />";
        // echo $book;
        // echo "<br />";

        //authors
        $query = "SELECT id FROM authors WHERE name = '$author'";
        $result = $mysqli->query($query);

        if ($result) {
            if (mysqli_num_rows($result) > 0) {
                //update the existing data
                $existing_author = $result->fetch_array(MYSQLI_NUM);
                $author_id = $existing_author[0];

                $update_query = "UPDATE authors SET name='$author', date_updated=NOW() WHERE id='$author_id'";
                $update_result = $mysqli->query($update_query);
            } else {
                //insert
                $insert_query = "INSERT INTO authors (name, date_updated)
        VALUES ('$author', NOW())";
                $insert_result = $mysqli->query($insert_query);
                $author_id = mysqli_insert_id($mysqli);
            }
        } else {
            echo 'Error: ' . mysqli_error($mysqli);
        }

        //books
        $query1 = "SELECT id FROM books WHERE title = '$book'";
        $result1 = $mysqli->query($query1);

        if ($result1) {
            if (mysqli_num_rows($result1) > 0) {
                //update the existing data
                $existing_book = $result1->fetch_array(MYSQLI_NUM);
                $update_query1 = "UPDATE books SET title='$book', date_updated=NOW() WHERE id='$existing_book[0]'";
                $update_result1 = $mysqli->query($update_query1);
            } else {
                //insert
                $insert_query1 = "INSERT INTO books (title, author_id, date_updated)
        VALUES ('$book', $author_id, NOW())";
                $insert_result1 = $mysqli->query($insert_query1);
            }
        } else {
            echo 'Error: ' . mysqli_error($mysqli);
        }
        // echo "<hr />";
    }
}
?>