<?php
      if(!@$_GET['halaman']){
        include 'View/main.php';
        
      } 
      elseif($_GET['halaman'] == 'Get-tweet') {
        include_once "View/Get-tweet.php"; 

      }elseif($_GET['halaman'] == 'preprocessing') {
        include_once "View/halaman-preprocessing.php"; 

      }elseif($_GET['halaman'] == 'training') {
        include_once "View/halaman-training.php"; 

      }elseif($_GET['halaman'] == 'hasil-penelitian') {
        include_once "View/halaman-hasil-penelitian.php"; 

      }elseif($_GET['halaman'] == 'data-user') {
        include_once "View/halaman-data-user.php"; 

      }elseif($_GET['halaman'] == 'hasil-akurasi') {
        include_once "View/halaman-hasil-akurasi.php"; 

      }    
?>