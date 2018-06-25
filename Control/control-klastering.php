<?php
      if(!@$_GET['act']){
        echo "<p><b2>Halaman hasil Process Klastering</b2></p>";
      } 
      elseif($_GET['act'] == 'process') {
        include 'config/koneksi.php';
        include "tokenizer-master/try.php";
        include "sastrawi-master/try.php";
        include_once "process-term-all.php"; 

        echo '<script>window.alert("Berhasil Process Term");window.location=("halaman-klastering.php?act=term")</script>';
      } elseif ($_GET['act'] == 'tfidf') {
        include 'config/koneksi.php';
        include_once "process-tidf-doc.php"; 
      } elseif ($_GET['act'] == 'term') {
        include 'config/koneksi.php';
        include_once "process-show-term.php"; 
      } elseif ($_GET['act'] == 'jarak') {
        include 'config/koneksi.php';
        include_once "process-jarak-document.php"; 
      } elseif ($_GET['act'] == 'iterasi1') {
        include 'config/koneksi.php';
        include_once "process-group-klaster.php"; 
      } elseif ($_GET['act'] == 'result') {
        include 'config/koneksi.php';
        include_once "process-result-klaster.php"; 
      } elseif ($_GET['act'] == 'validasi') {
        include 'config/koneksi.php';
        include_once "process-validasi-klaster.php"; 
      }
?>