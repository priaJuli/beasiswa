<div class="center">
          <form class="form-horizontal" action="Model/process-add-training.php" method="POST">
                       
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
              <span class="col-sm-3">Keterangan</span> :              
              <div class="col-sm-9">
                
                <select class="form-control" name="keterangan" required>
                  <option value="">-- Pilih --</option>
                  <option value="LAYAK">Layak Mendapatkan Beasiswa</option>
                  <option value="TIDAK LAYAK">Tidak Layak Mendapatkan Beasiswa</option>
                </select>
              </div>
            </div>
            <div class="form-group">  
              <div class="col-sm-12">
                <input class="col-sm-2" type="submit" value="Simpan" name="naive">   
                <button class="col-sm-2" onclick="window.location.href='index.php?halaman=training'">Batal</button>
              </div>
            </div>
            
          </form>
        </div>