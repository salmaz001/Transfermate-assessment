<?php
require './conn.php';
// require './insertData.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./main.css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <title>PHP Test</title>
</head>

<body>
    <h1 style="text-align:center">Book Library</h1>
    <span>You can search any books by Author</span>
    <div class="searchCont">
        <div id="search">
            <form action="#" method="post">
                <fieldset class="clearfix">
                    <input type="search" name="search" placeholder="Book Author">
                    <input type="submit" name="submit" value="Search" class="button">
                </fieldset>
            </form>
        </div>
    </div>

    <?php

    if (isset($_POST["submit"]) && $_POST["search"] != '') {
        $author = $_POST["search"];

        $query = "select a.name, b.title 
    FROM authors a,books b 
    where a.id = b.author_id
    and a.name like '%$author%';";
        $result = $mysqli->query($query);

        if ($result) {
            $i = 0;
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    $name[$i] = $row['name'];
                    $book[$i] = $row['title'];
                    // echo $row['name'];
                    // echo $row['title'];
    ?>
                    <div class="wrapper">

                        <table class="slide">
                            <tr>
                                <td><?php echo $name[$i]; ?></td>
                                <td><?php echo $book[$i]; ?></td>
                            </tr>
                        </table>
                    </div>
    <?php
                    $i++;
                }
            } else {
                echo "No Books found from the Author, Please try again.";
            }
        } else {
            echo "Error, Please try again.";
        }
    }
    unset($_POST['submit']);
    unset($_POST['search']);
    ?>
</body>

</html>