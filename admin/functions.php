<?php

function confirmQuery($result){
    global $connection;
    if(!$result){
        die("QUERY FAILED" . mysqli_error($connection));
    }

}


function insert_categories(){

    global $connection;

    if(isset($_POST['submit'])){
        $cat_title = $_POST['cat_title'];
        if($cat_title == "" || empty($cat_title) || strlen($cat_title) < 3){
            echo "This field should not be empty or less than 3 characters!";
        }else{
            $query = "INSERT INTO categories(cat_title)";
            $query.= "VALUE('$cat_title')";
            $create_category = mysqli_query($connection, $query);

            if(!$create_category){
                die('QUERY FAILED' . mysqli_error($connection));
            }
        }
    }
}

function findAllCategories(){
    global $connection;

    $query = "SELECT * FROM categories";
    $select_categories = mysqli_query($connection,$query); 

     while($row = mysqli_fetch_assoc($select_categories)){
        $cat_id = $row['cat_id'];
        $cat_title = $row['cat_title'];
        echo "<tr>";
            echo "<td>$cat_id</td>";
            echo "<td>$cat_title</td>";
            echo "<td><a href='categories.php?delete=$cat_id'>Delete</td>";
            echo "<td><a href='categories.php?edit=$cat_id'>Edit</td>";
        echo "</tr>";
     }
}



function deleteCategories(){
    global $connection;
    if(isset($_GET['delete'])){
        $cat_id_del = $_GET['delete'];
        $query = "DELETE FROM categories WHERE cat_id = $cat_id_del";
        $delete_query = mysqli_query($connection, $query);

        //Refresh page to delete cat
        header("Location: categories.php");

    }
}


?>