<?php
  $DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

  /* check connection */
  if (mysqli_connect_errno()) {
      printf("Connect failed: %s\n", mysqli_connect_error());
      exit();
  }

  if(isset($_POST['naive'])){
    $nama = $_POST['nama'];
    $id = $_POST['id'];
    $surat = $_POST['surat'];
    $work = $_POST['work'];
    $salary = $_POST['salary'];
    $respon = $_POST['respon'];
    $condt = $_POST['condt'];
    $status = $_POST['status'];
    $layak = $_POST['keterangan'];
    
    $q_ins = mysqli_query($DBcon, "UPDATE data_training SET nama='$nama', surat_miskin='$surat',
          pekerja_ortu='$work', pend_ortu='$salary', tanggungan='$respon', kondisi_rumah='$condt', status_rumah='$status',
          keterangan='$layak' WHERE id=$id;");
    if($q_ins){
      echo "<script>alert('Data training berhasil dirubah'); window.location.href='../index.php?halaman=training';</script>";
    }else{
      echo "GAGAL";
      var_dump($q_ins);
    }
  }


?>