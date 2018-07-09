<?php
  session_start();
  if(isset($_POST['username'])){
      include '../config/koneksi.php';
      $username = $_POST['username'];
      $pass     = $_POST['password'];
      $search = mysqli_query($DBcon, "SELECT * FROM `users` WHERE username='$username' AND password='$pass'");
      
      if($search){
        
        $_SESSION["user"] = $username;
        $_SESSION["role"] = $search->fetch_assoc()['role'];
        
        
        header("Location: ../index.php");
      }else{
        echo '<script>window.alert("Login failed!");</script>';
      
      }


  }
?>