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
          <a href="index.php">Dasboard</a>
        </li>
        <li class="breadcrumb-item active">Hasil Klastering</li>
        
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          
          <button onclick="window.location.href='index.php?halaman=klastering&act=process'">Process</button>

          <button onclick="window.location.href='index.php?halaman=klastering&act=term'">Show TermKata</button>
          <button onclick="window.location.href='index.php?halaman=klastering&act=tfidf'">Show TF-IDF</button>
          <button onclick="window.location.href='index.php?halaman=klastering&act=jarak'">Show JarakDocument</button>
          <button onclick="window.location.href='index.php?halaman=klastering&act=iterasi1'">Show Iterasi1</button>
          <button onclick="window.location.href='index.php?halaman=klastering&act=result'">Show ResultKlaster</button>
          <button onclick="window.location.href='index.php?halaman=klastering&act=validasi'" onclick="return confirm('Are your sure?')">Validasi HasilKlastering</button>
          
          </div>
        <div class="card-body">
        

          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <?php
                if(!@$_GET['act']){
                  echo "<p><b2>Halaman hasil Process Klastering</b2></p>";
                } 
                elseif($_GET['act'] == 'process') {
                  include 'config/koneksi.php';
                  include "Model/tokenizer-master/try.php";
                  include "Model/sastrawi-master/try.php";
                  include_once "Model/process-term-all.php"; 

                  echo '<script>window.alert("Berhasil Process Term");window.location=("index.php?halaman=klastering&act=term")</script>';
                } elseif ($_GET['act'] == 'tfidf') {
                  include 'config/koneksi.php';
                  include_once "Model/process-tidf-doc.php"; 
                } elseif ($_GET['act'] == 'term') {
                  include 'config/koneksi.php';
                  include_once "Model/process-show-term.php"; 
                } elseif ($_GET['act'] == 'jarak') {
                  include 'config/koneksi.php';
                  include_once "Model/process-jarak-document.php"; 
                } elseif ($_GET['act'] == 'iterasi1') {
                  include 'config/koneksi.php';
                  include_once "Model/process-group-klaster.php"; 
                } elseif ($_GET['act'] == 'result') {
                  include 'config/koneksi.php';
                  include_once "Model/process-result-klaster.php"; 
                } elseif ($_GET['act'] == 'validasi') {
                  include 'config/koneksi.php';
                  include_once "Model/process-validasi-klaster.php"; 
                }
                ?>
            </table>
          </div>


        </div>
        
      </div>
    </div>