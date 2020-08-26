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
                        <form action="">
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
                        </div>
                        <!--- Add category form -->

                        <div class="col-xs-6">

                        <?php
                        $query = "SELECT * FROM categories";
                        $select_categories = mysqli_query($connection,$query); 
                        
                        
                        ?>
       
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Category Title</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                             while($row = mysqli_fetch_assoc($select_categories)){
                                $cat_id = $row['cat_id'];
                                $cat_title = $row['cat_title'];
                                echo "<tr>";
                                    echo "<td>$cat_id</td>";
                                    echo "<td>$cat_title</td>";
                                echo "</tr>";
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
