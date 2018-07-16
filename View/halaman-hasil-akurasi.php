
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Dasboard</a>
        </li>
        <li class="breadcrumb-item active">Hasil Hasil Akurasi</li>
        
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          
        </div>
        <div class="card-body">
          
          <div class="table-responsive">
            
            <table class="table table-bordered" width="100%" cellspacing="0">
              <?php
                
                  include 'config/koneksi.php';
                  include 'Model/process-validasi-naive.php';
                
                
                ?>
            </table>
          </div>
            <br><h5 style="text-align: center;">Rumus Perhitungan dan Hasil Confusion Matrix</h5><br><br>
          
            <span lang="latex">
              ACC=\frac{TP+TN}{TP+TN+FP+FN}=\frac{69+21}{69+21+8+2}
          </span><br><br>
          <span lang="latex">
            ACC=\frac{90}{100}
          </span><br><br>
             ACC=90%<br><h5>Dari rumus perhitungan diatas, hasil Akurasi Naive Bayes sebesar 90%</h5><br><br>
          <span lang="latex">
              PRECISION=\frac{TP}{TP+FP}=\frac{69}{69+2}
          </span><br><br>
          <span lang="latex">
            PRE=\frac{69}{71}
          </span><br><br>
              PRE=97%<br><h5>Dari rumus perhitungan diatas, hasil Presisi Naive Bayes sebesar 97%</h5><br><br>
          <span lang="latex">
              RECALL=\frac{TP}{TP+FN}=\frac{69}{69+8}
          </span><br><br>
          <span lang="latex">
            REC=\frac{69}{77}
          </span><br><br>
              REC=89%<br><h5>Dari rumus perhitungan diatas, hasil Recall Naive Bayes sebesar 89%</h5><br><br>
          <span lang="latex">
              ERRORRATE=\frac{FP+FN}{TP+TN+FP+FN}=\frac{2+8}{69+21+8+2}
          </span><br><br>
          <span lang="latex">
            ERR=\frac{10}{100}
          </span><br><br>
              ERR=10%<br><h5>Dari rumus perhitungan diatas, hasil Recall Naive Bayes sebesar 10%</h5><br><br>          
        </div>
        </div>
        
      </div>
    </div>
