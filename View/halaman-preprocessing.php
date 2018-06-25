<?php
  include "config/koneksi.php";

  $search = mysqli_query($DBcon, "SELECT * FROM `text_twitter`");
  if(mysqli_num_rows($search) > 0){
    
  }else{
    echo '<script>window.alert("Lakukan Crawling Data Terlebih Dahulu");window.location.href="index.php?halaman=Get-tweet";</script>';
    
  }
?>
<div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Hasil Preprocessing</li>
        <li class="breadcrumb-item">
          <a href="index.php?halaman=preprocessing&act=token">Tokenization</a>
        </li>
        <li class="breadcrumb-item">
          <a href="index.php?halaman=preprocessing&act=stemming">Stemming</a>
        </li>
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Hasil Text Preprocessing
          
        </div>
        
        
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>No Document</th>
                  <th>Text Data</th>
                </tr> 
              </thead>
              <tfoot>
                <tr>
                  <th>No Document</th>
                  <th>Text Data</th>
                </tr>
              </tfoot>
              <tbody>
                <?php
                if(!isset($_GET['act'])){

                }
                elseif($_GET['act'] == 'token') {
                  include "Model/tokenizer-master/try.php";
                  
                  
                  include_once "Model/twitteroauth-master/View/tables-token.php"; 
                } elseif ($_GET['act'] == 'stemming') {
                  include "Model/tokenizer-master/try.php";
                  include "Model/sastrawi-master/try.php";

                  // $tgl = $_POST["tanggal"];
                  
                  include_once "Model/twitteroauth-master/View/tables-proses.php"; 
                }
                ?>
              </tbody>
            </table>
          </div>
        </div>
        
      </div>
    </div>