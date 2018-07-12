<?php
  $DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

  /* check connection */
  if (mysqli_connect_errno()) {
      printf("Connect failed: %s\n", mysqli_connect_error());
      exit();
  }

  if(isset($_POST['naive'])){
    $nama = $_POST['nama'];
    $NISN = $_POST['NISN'];
    $surat = $_POST['surat'];
    $work = $_POST['work'];
    $salary = $_POST['salary'];
    $respon = $_POST['respon'];
    $condt = $_POST['condt'];
    $status = $_POST['status'];
    $layak = $_POST['keterangan'];
    
    $q_ins = mysqli_query($DBcon, "INSERT INTO data_training(id,NISN,nama,surat_miskin,pekerja_ortu,pend_ortu,tanggungan,
        kondisi_rumah,status_rumah,keterangan) VALUES ('', $NISN, '$nama', '$surat', '$work', '$salary', '$respon',
        '$condt', '$status', '$layak');");
    if($q_ins){
      echo "<script>alert('Data training berhasil ditambah'); window.location.href='../index.php?halaman=training';</script>";
    }else{
      echo "GAGAL";
    }
  }


?>