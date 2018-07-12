<?php
  $DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

  /* check connection */
  if (mysqli_connect_errno()) {
      printf("Connect failed: %s\n", mysqli_connect_error());
      exit();
  }

  if(isset($_POST['adduser'])){
    $nama = $_POST['username'];
    $password = $_POST['password'];
    $role = $_POST['role'];

    $q_ins = mysqli_query($DBcon, "INSERT INTO users(username,password,role) VALUES ('$nama', '$password', '$role');");
    if($q_ins){
      echo "<script>alert('Data training berhasil ditambah'); window.location.href='../index.php?halaman=data-user';</script>";
    }else{
      echo "GAGAL";
    }
  }


?>