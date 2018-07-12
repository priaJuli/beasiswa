<?php ini_set('display_errors',0); ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Klastering Tweet - Home</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="vendor/css/bootstrap.min.css">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <style>
  a{
    color: #b30000;
  }
  p{
    color: #242729;
    padding-left: 5px;
    padding-right: 8px;
    margin-left: 10px;
    margin-right: 10px;
    text-indent: 50px;

  }
  .h6{
    font-size: 1rem;
    line-height: 1.54;
  }
  .bg-gray{
    background-color: lightblue;
  }
  #exampleAccordion{
    background-color: #4d4dff;
    border-color: black;
  }
  .navbar-right{
    position: fixed;
    top: 15px;
    right: 16px;
    font-size: 18px;
  }
  .navbar{
    background-color: lightblue
  }
  input{
    margin-top: 10px;
    margin-bottom: 10px;
  }
  .center{
    margin: auto;
  }
  span{
    padding-right: 15px;
    width: 100px;

  }
  </style>
  
  
</head>

<body class="fixed-nav sticky-footer bg-gray" id="page-top">
  
  <?php

    // include "View/navbar.php";
    // include "Control/main-control.php";  
      session_start();
      if(!isset($_SESSION['user'])){
          // include "View/navbar.php";
          header("Location: View/login.php");
          // include "View/login.php";
      }else{
        echo($_SESSION['user']);
        if($_SESSION['role'] == 'admin'){
           include "View/navbar.php";
           include "Control/main-control.php";  
        }elseif ($_SESSION['role'] == 'member'){
           include "View/navbar-member.php";
           include "Control/main-control.php";
        }
          
      }
      
  ?>
  <div class="container">
    <div class="modal fade" id="useredit" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          <form class="form-horizontal" action="Model/process-add-user.php" method="POST">
                       
            <div class="form-group">
              <span class="col-sm-3">Username</span> : 
              
              <div class="col-sm-9">
                <input class="col-sm-12" name="username" required>
              </div>
            </div>
            <div class="form-group">
              <span class="col-sm-3">Password</span> : 
              <div class="col-sm-9">
                <input class="col-sm-12" name="password" required>
              </div>              
            </div>
            <div class="form-group">
              <span class="col-sm-3">Role</span> :               
              <div class="col-sm-9">
                
                <select class="form-control" name="surat" required>
                  <option value="">-- Pilih --</option>
                  <option value="admin">Admin</option>
                  <option value="member">Member</option>
                </select>
              </div>
            </div>
            
            <div class="form-group">  
              <div class="col-sm-12">
                <input class="col-sm-2" type="submit" value="Simpan" name="naive">   
                <button class="col-sm-2" onclick="window.location.href='index.php?halaman=training'">Batal</button>
              </div>
            </div>
            
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <div class="modal fade" id="useradd" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          <form class="form-horizontal" action="Model/process-add-user.php" method="POST">
                       
            <div class="form-group">
              <span class="col-sm-3">Username</span> : 
              
              <div class="col-sm-9">
                <input class="col-sm-12" name="username" required>
              </div>
            </div>
            <div class="form-group">
              <span class="col-sm-3">Password</span> : 
              <div class="col-sm-9">
                <input class="col-sm-12" name="password" required>
              </div>              
            </div>
            <div class="form-group">
              <span class="col-sm-3">Role</span> :               
              <div class="col-sm-9">
                
                <select class="form-control" name="role" required>
                  <option value="">-- Pilih --</option>
                  <option value="admin">Admin</option>
                  <option value="member">Member</option>
                </select>
              </div>
            </div>
            
            <div class="form-group">  
              <div class="col-sm-12">
                <input class="col-sm-2" type="submit" value="Simpan" name="adduser">   
                <button class="col-sm-2" data-dismiss="modal">Batal</button>
              </div>
            </div>
            
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  </div>
  
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2018</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    
  </div>
</body>

</html>
