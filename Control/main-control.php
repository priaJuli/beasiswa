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

      }    
?>