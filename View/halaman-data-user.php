
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Dasboard</a>
        </li>
        <li class="breadcrumb-item active">Kelola Data User</li>
        
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
            <p class="h5" style="text-align: center;">Data User</p>
            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#useradd">Tambah</button>
        </div>
        <div class="card-body">
          <?php 
            
          ?>

          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <?php
                if(!@$_GET['act']){                                      
                  include 'config/koneksi.php';
                  include 'Model/process-show-user.php';
                } 
                elseif($_GET['act'] == 'del') {
                  include "Model/process-del-user.php";  
                }
              
                ?>
            </table>
          </div>
        </div>
        </div>
        
      </div>
    </div>
   