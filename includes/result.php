<?php

function concat($arr)
{
    $str = '';
    foreach ($arr as $item) {
        $str .= ' ' . $item . ',';
    }
    $str = rtrim($str, ",");
    return $str;
}

function construct_query($search, $tagId, $authorId)
{
    $from = 'books';
    $where = '';
    if ($authorId) {
        $from .= ', books_authors';
        count($authorId) > 1 ? $str = 'in (' . concat($authorId) . ') '
            : $str = '= ' . $authorId[0];
        $where = 'where books.id = books_authors.book_id
        and books_authors.author_id ' . $str;
    }

    if ($tagId) {
        $from .= ', books_tags';
        count($tagId) > 1 ? $str = 'in (' . concat($tagId) . ') '
            : $str = '= ' . $tagId[0];
        $where ? $and = 'and ' : $and = 'where ';
        $where .= $and . 'books.id = books_tags.book_id 
        and books_tags.tag_id ' . $str;
    }

    if ($search) {
        $where ? $and = 'and ' : $and = 'where ';
        $where .= $and . "books.name like '%" . $search . "%'";
    }
    return "select books.id, books.name, books.note, books.image
   from $from $where";
}

$query = construct_query($_POST['search'], $_POST['tagId'], $_POST['authorId']);

$_books = mysqli_query($connection, $query);
$books = result_to_array($_books);
?>

<table><h2>Все книги: (<? echo count($books) ?>)</h2>
    <?
    foreach ($books as $book) {

        $book_author = mysqli_query($connection,
            "select authors.name from books,books_authors,authors
            where books.id = books_authors.book_id and authors.id = books_authors.author_id
              and books.id =" . $book['id']);;
        $output_authors = '';

        while (($book_author_el = mysqli_fetch_assoc($book_author))) {
            $output_authors = $output_authors . '</br>' . $book_author_el["name"];
        }

        $book_tags = mysqli_query($connection,
            "select tags.tag from books,books_tags,tags
            where books.id = books_tags.book_id and tags.id = books_tags.tag_id
            and books.id =" . $book['id']);
        $output_tags = '';

        while (($book_tags_el = mysqli_fetch_assoc($book_tags))) {
            $output_tags = $output_tags . ' ' . $book_tags_el['tag'];
        }


        echo "  <tr>
                    <td>
                        <img width='100px' alt=" . $book['name'] . " src=" . $book['image'] . ">
                    </td>
                    <td>
                        <p>" . $output_authors . "</p>
                        <p><b>" . $book['name'] . "</b></p>
                        <p><i>" . $output_tags . "</i></p>
                    </td>
                </tr>";
    }

    ?>
</table>