<!DOCTYPE html>
<html>
<head>
  <title>Login Form</title>
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <style type="text/css">
  .center{
    margin: auto;
  }
  </style>
</head>
<body class="fixed-nav sticky-footer bg-gray" id="page-top">
  <div class="content-wrapper" id="main-content">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      

      <div class="row" id="main" >
          <div class="center">
            <br><img src="../css/logo.png" alt="logo">
            <br>
            <br>
             <p ><strong class="judul" >Aplikasi Beasiswa BSM</strong></p><br> 
             <form role="form" method="POST" class="form-signin" action="auth.php">
              <fieldset>
                  <div class="form-group">
                      <center><input type="text" class="input name" placeholder="Username" name="username"></center>
                  </div>
                  <div class="form-group">
                      <center><input class="input pass" placeholder="Password" name="password" type="password"></center>
                  </div>
                  <center>
                  <div class="judul">
                      <input type="submit" name="login" class="btn btn-lg btn-primary btn-block" value="Login">
                  </div>
                  </center>
                  <br>
                  
              </fieldset> 
          </form>  
          </div>
      </div>

    </div>
  </div>
</body>
</html>
