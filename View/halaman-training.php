
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
          <p class="h5" style="text-align: center;">Data Training</p>
          <button onclick="window.location.href='index.php?halaman=training&act=add'">Tambah</button>
          </div>
        <div class="card-body">
            <?php
              if(@$_GET['act'] && $_GET['act'] == 'add'){
                include "View/tambah-data.php";
              }elseif(@$_GET['act'] && $_GET['act'] == 'edit'){
                include 'config/koneksi.php';
                include "View/edit-data.php";
              }
            ?>

          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <?php
                if(!@$_GET['act']){
                  
                  include 'config/koneksi.php';
                  include "Model/process-show-latih.php";
                } 
                elseif($_GET['act'] == 'del') {
                  include "Model/process-del-training.php";  
                } 
                ?>
            </table>
          </div>


        </div>
        
      </div>
    </div>