<?php
    include "includes/admin_header.php";
?>

    <!--- wrapper -->
    
    <div id="wrapper">

        <?php include "includes/admin_navigation.php"; ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">

                        <h1 class="page-header">
                            Welcome to Admin
                            <small>Author</small>
                        </h1>


                        <!--- Add category form -->          
                        <div class="col-xs-6">


                        <?php

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


                        ?>




                        <form action="" method="post">
                            <label for="cat_title">Add Category</label>
                            <div class="form-group">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="cat_title">
                                </div>    
                                <div class="form-group">
                                    <input class="btn btn-primary" type="submit" name="submit" value="Add Category">
                                </div>
                            </div>
                        </form>


                        <?php
                        if(isset($_GET['edit'])){
                            $cat_id = $_GET['edit'];

                            include "includes/update_categories.php";
                        }

                        ?>


                        </div>
                        <!--- Add category form -->

                        <div class="col-xs-6">

       
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Category Title</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php

                            //FIND ALL CATEGORIES QUERY
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

                            ?>

                            <?php
                                  //DELETE CAT
                                  if(isset($_GET['delete'])){
                                    $cat_id_del = $_GET['delete'];
                                    $query = "DELETE FROM categories WHERE cat_id = $cat_id_del";
                                    $delete_query = mysqli_query($connection, $query);
    
                                    //Refresh page to delete cat
                                    header("Location: categories.php");
    
                                }



                            ?>

                            </tbody>
                        </table>    




                        </div>


                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
