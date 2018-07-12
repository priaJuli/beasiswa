
<div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Do clasification</li>
        
      </ol>
      <!-- Example DataTables Card-->
      <div class="card">
        <div class="card-header">
            <p class="h5" style="text-align: center;">Do Clasification BSM</p>
        </div>
        <div class="center">
          <form class="form-horizontal" action="Model/process-naive-bayes.php" method="POST">
            <?php 
              if(isset($_POST['data-training'])){
                $data_T = $_POST['data-training'];
                ?>
                  <input hidden name="data-training" value="<?php echo $data_T;?>">
                <?php
              }
              else{
                $data_T = "real";
                ?>
                  <input hidden name="data-training" value="<?php echo $data_T;?>">
                <?php
              }
            ?>
            
            <div class="form-group">
              <span class="col-sm-3">NISN</span> : 
              
              <div class="col-sm-9">
                <input class="col-sm-12" name="NISN" required>
              </div>
            </div>
            <div class="form-group">
              <span class="col-sm-3">Nama</span> : 
              <div class="col-sm-9">
                <input class="col-sm-12" name="nama" required>
              </div>              
            </div>
            <div class="form-group">
              <span class="col-sm-3">Surat</span> :               
              <div class="col-sm-9">
                
                <select class="form-control" name="surat" required>
                  <option value="">-- Pilih --</option>
                  <option value="ADA">Ada</option>
                  <option value="TIDAK">Tidak Ada</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <span class="col-sm-3">Pekerjaan</span> :               
              <div class="col-sm-9">
                
                <select class="form-control" name="work" required>
                  <option value="">-- Pilih --</option>
                  <option value="TETAP">Tetap</option>
                  <option value="TIDAK TETAP">Tidak Tetap</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <span class="col-sm-3">Penghasilan</span> :               
              <div class="col-sm-9">
                
                <select class="form-control" name="salary" required>
                  <option value="">-- Pilih --</option>
                  <option value="<500RB">Kurang dari 500.000</option>
                  <option value="500RB-1JT">500.000 - 1.000.000</option>
                  <option value=">1JT">Lebih dari 1.000.000</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <span class="col-sm-3">Tanggungan Anak</span> : 
              <div class="col-sm-9">
                
                <select class="form-control" name="respon" required>
                  <option value="">-- Pilih --</option>
                  <option value="TIDAK ADA">1</option>
                  <option value="SEDIKIT">2</option>
                  <option value="SEDANG">3</option>
                  <option value="BANYAK">Lebih dari 3</option>
                </select>  
              </div>            
            </div>
            <div class="form-group">
              <span class="col-sm-3">Kondisi Rumah</span> :               
              <div class="col-sm-9">
                
                <select class="form-control" name="condt" required>
                  <option value="">-- Pilih --</option>
                  <option value="LAYAK">Tembok, Atap bagus, Air, Lantai Keramik</option>
                  <option value="SEDERHANA">Tembok/Papan, Atap, Air, Lantai Tekel</option>
                  <option value="TIDAK LAYAK">Papan, Atap(-), Air(-), Lantai Tanah</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <span class="col-sm-3">Status Rumah</span> :              
              <div class="col-sm-9">
                
                <select class="form-control" name="status" required>
                  <option value="">-- Pilih --</option>
                  <option value="PRIBADI">Milik Pribadi</option>
                  <option value="KONTRAK">Kontrak</option>
                  <option value="NUMPANG">Bersama Orang Tua</option>
                </select>
              </div>
            </div>
            <div class="form-group">  
              <div class="col-sm-9">
                <input type="submit" value="Process" name="naive">   
              </div>
            </div>
            
          </form>
        </div>
        <div class="card-header">
          <i class="fa fa-table"></i> Tabel Data Training
          <form action="" method="POST">
            <select id="data-training" name="data-training">
              <option value="">-- Pilih --</option>
              <option value="real">Data Real (230)</option>
              <option value="coba">Data Coba (10)</option>
              <option value="hitung">Data Perhitungan (100)</option>            
            </select>
            <input type="submit" value="Process" name="process">
          </form>
          
        </div>
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>NISN</th>
                  <th>Nama</th>
                  <th>Surat </th>
                  <th>Work</th>
                  <th>Salary</th>
                  <th>Respon</th>
                  <th>Kondisi</th>
                  <th>Status</th>
                  <th>Kelayakan</th>
                  
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th>NISN</th>
                  <th>Nama</th>
                  <th>Surat </th>
                  <th>Work</th>
                  <th>Salary</th>
                  <th>Respon</th>
                  <th>Kondisi</th>
                  <th>Status</th>
                  <th>Kelayakan</th>
                  
                  
                </tr>
              </tfoot>
              <tbody id="tablebody">
        <?php
          if(isset($_POST['process'])){
              $DBuser = "root";
              $DBpass = "";
              $DBhost = "localhost";
              $DBname = "datmin_beasiswa";
                
              $DBcon = new MySQLi($DBhost,$DBuser,$DBpass,$DBname);
                
                 if ($DBcon->connect_errno) {
                     die("ERROR : -> ".$DBcon->connect_error);
                 }

              if(isset($_POST['data-training'])){
                if($_POST['data-training'] == "real"){
                  $dataT = "data_training";
                }elseif($_POST['data-training'] == "coba"){
                  $dataT = "data_training_try";
                }else{
                  $dataT = "data_training_bab3";
                }
              }
              else{
                $dataT = 'data_training';
              }
                
                  try{
                    // Design initial table header 
                    $data = '';
                    
                    $resdata = mysqli_query($DBcon, "SELECT * FROM $dataT;");
                    // var_dump($resdata);
                      // if query results contains rows then featch those rows 
                      
                        $number = 1;
                        foreach($resdata as $row)
                        {
                          $data .= '<tr>
                          <td>'.$row['NISN'].'</td>
                          <td>'.$row['nama'].'</td>
                          <td>'.$row['surat_miskin'].'</td>
                          <td>'.$row['pekerja_ortu'].'</td>
                          <td>'.$row['pend_ortu'].'</td>
                          <td>'.$row['tanggungan'].'</td>
                          <td>'.$row['kondisi_rumah'].'</td>
                          <td>'.$row['status_rumah'].'</td>
                          <td>'.$row['keterangan'].'</td>
                          
                          </tr>';
                          $number++;
                        }
                      
                      

                      

                      echo $data;
                }catch (PDOException $e) {
                    echo "<br>".$e->getMessage();
                  }
    
          }
        
        
                ?>
              </tbody>
            </table>
          </div>
        </div>
        
      </div>
    </div>

    