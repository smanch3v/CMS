<?php

if(isset($_POST['submit'])){
    echo "yos booooy";
}


$username = $_POST['username'];

$password = $_POST['password'];


if(isset($username) && $username == "mani"){
    echo "Username is correct!";
}


if(isset($password) && $password == "123456"){
    echo "Password is correct!";
}