<?php

    if(isset($_POST['create_user'])){

       
        
        $user_firstname = $_POST['user_firstname'];
        $user_lastname  = $_POST['user_lastname'];
        $user_role      = $_POST['user_role'];
        $username       = $_POST['username'];
        $user_email     = $_POST['user_email'];
        $user_password  = $_POST['user_password'];

        // $post_date = date('d-m-y');
        // $post_comment_count = 4;

        // move_uploaded_file($post_image_temp, "../images/$post_image");

        // $query = "INSERT INTO posts (post_category_id, user_id, post_author, post_date, post_image, post_content, post_tags, post_status )";
        // $query.= "VALUES('$post_category_id','$post_title','$post_author',now(),'$post_image','$post_content','$post_tags','$post_status')";

        // $create_post_query = mysqli_query($connection, $query);

        // confirmQuery($create_post_query);
    }


?>



<form action="" method="post" enctype="multipart/form-data">

    <div class="form-group">
        <label for="title">First Name</label>
        <input type="text" class="form-control" name="user_firstname">
    </div>

    <div class="form-group">
        <label for="post_status">Last Name</label>
        <input type="text" class="form-control" name="user_lastname">
    </div>


    <div class="form-group">
       <select name="user_role" id="">
       <option value="subscriber">Select Role</option>
        <option value="admin">Admin</option>
        <option value="subscriber">Subscriber</option>
    
       
       </select>
    </div>

  

    <!-- <div class="form-group">
        <label for="post_image">Post Image</label>
        <input type="file" class="form-control" name="image">
    </div> -->

    <div class="form-group">
        <label for="post_image">Username</label>
        <input type="text" class="form-control" name="username">
    </div>

    <div class="form-group">
        <label for="post_content">Email</label>
        <input type="email" class="form-control" name="user_email">
    </div>

    <div class="form-group">
        <label for="post_content">Password</label>
        <input type="password" class="form-control" name="user_password">
    </div>

    <div class="form-group">
        <input type="submit" class="btn btn-primary" name="create_user" value="Add User">
    </div>
</form>