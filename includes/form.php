<?
include 'includes/db.php';

function result_to_array($result)
{
    $array = array();
    $count = 0;
    while ($row = mysqli_fetch_assoc($result)) {
        $array[$count] = $row;
        $count++;
    }
    unset($count);
    return $array;
}

$authors = mysqli_query($connection, "SELECT * from `authors`");
$tags = mysqli_query($connection, 'SELECT * FROM tags');

$authors = result_to_array($authors);
$tags = result_to_array($tags);
?>

<form method="post" class="mt-3">
    <fieldset>
        <label><input type="text" placeholder="Поиск по названию"
                      id="searchByName" name="search"
                      value="<? echo $_POST['search'] ?>"
            ></label>
        <input type="submit" id="search" value="Искать!">
    </fieldset>

    <details>
        <summary class=""><b>Жанры (<? echo count($tags) ?>)</b></summary>
        <ul><?

            foreach ($tags as $tag) {
                if ($_POST['tagId']) {
                    if (in_array($tag['id'], $_POST['tagId'])) {
                        $tag_checked = 'checked';
                    } else {
                        $tag_checked = '';
                    }
                }
                echo '<li>
                      <label>
                        <input ' . $tag_checked . ' type="checkbox" 
                            value=' . $tag["id"] . ' name="tagId[]">
                            ' . $tag["tag"] . '
                      </label>
                      </li>';

            }
            ?>
        </ul>
    </details>

    <details>
        <summary class=""><b>Авторы (<? echo count($authors) ?>)</b></summary>
        <ul><?
            foreach ($authors as $author) {
                if ($_POST['authorId']) {
                    if (in_array($author['id'], $_POST['authorId'])) {
                        $author_checked = 'checked';
                    } else {
                        $author_checked = '';
                    }
                }
                echo '<li>
                        <label> 
                            <input ' . $author_checked . ' type="checkbox"
                             name="authorId[]" value=' . $author["id"] . '>
                         ' . $author["name"] . '
                        </label>
                     </li>';
            }
            ?>
        </ul>
    </details>
</form>
                                                                                                                                                                                                               