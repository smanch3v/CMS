<?php 
include "includes/db.php";
include "includes/header.php";

if(isset($_POST['submit'])){
    $username   = $_POST['username'];
    $email      = $_POST['email'];
    $password   = $_POST['password'];
    $firstname  = $_POST['firstname'];
    $lastname   = $_POST['lastname'];


    if(!empty($username) && !empty($email) && !empty($password)){
        $query = "INSERT INTO users (username, user_email, user_firstname, user_lastname, user_password,user_role)";
        $query.= "VALUES('$username','$email','$password','$firstname','$lastname','subscriber')";

        $create_user_query = mysqli_query($connection, $query);
        if(!$create_user_query){
            die("Query Failed " . mysqli_error($connection) . ' '. mysqli_errno($connection) );
        }
        
        $message = "<h3 class='bg-success text-center'>You have been registered! <a href='index.php'>Home</a></h3>";

    }else{
        $message = "<h3 class='bg-danger'>Fields cannot be empty</h3>";
    }

} else{
    $message = "";
}




?>





    <!-- Navigation -->
    
    <?php  include "includes/navigation.php"; ?>
    
 
    <!-- Page Content -->
    <div class="container">
    
<section id="login">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-xs-offset-3">
                <div class="form-wrap">
                <h1>Register</h1>
                <?php echo $message;?>
                    <form role="form" action="registration.php" method="post" id="login-form" autocomplete="off">
                        <div class="form-group">
                            <label for="username" class="sr-only">username</label>
                            <input type="text" name="username" id="username" class="form-control" placeholder="Enter Your Username">
                        </div>
                        <div class="form-group">
                            <label for="firstname" class="sr-only">First Name</label>
                            <input type="text" name="firstname" id="firstname" class="form-control" placeholder="Enter Your First Name">
                        </div>
                        <div class="form-group">
                            <label for="lastname" class="sr-only">Last Name</label>
                            <input type="text" name="lastname" id="lastname" class="form-control" placeholder="Enter Your Last Name">
                        </div>
                         <div class="form-group">
                            <label for="email" class="sr-only">Email</label>
                            <input type="email" name="email" id="email" class="form-control" placeholder="somebody@example.com">
                        </div>
                         <div class="form-group">
                            <label for="password" class="sr-only">Password</label>
                            <input type="password" name="password" id="key" class="form-control" placeholder="Password">
                        </div>
                
                        <input type="submit" name="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Register">
                    </form>
                 
                </div>
            </div> <!-- /.col-xs-12 -->
        </div> <!-- /.row -->
    </div> <!-- /.container -->
</section>


        <hr>



<?php include "includes/footer.php";?>
