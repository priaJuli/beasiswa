
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Dasboard</a>
        </li>
        <li class="breadcrumb-item active">Hasil Penelitian Klastering</li>
        
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
         
        </div>
        <div class="card-body">
        

          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <?php
                include 'config/koneksi.php';
                include 'Model/process-show-result-penelitian.php';
                ?>
            </table>
          </div>
        </div>
        </div>
        
      </div>
    </div>
   