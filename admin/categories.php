<?php
    include "includes/header.php";
?>

    <!--- wrapper -->
    
    <div id="wrapper">

        <?php include "includes/navigation.php"; ?>

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
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Category Title</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Baseball Category</td>
                                    <td>Foorball Category</td>                                  
                                </tr>
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
