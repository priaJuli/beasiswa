<?php 

ini_set('max_execution_time', 300);


$show_latih = mysqli_query($DBcon, "SELECT * FROM data_testing");


?>
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
  <tbody id="data-content">
<?php 

ini_set('max_execution_time', 300);

//`text_twitter`
  

//$tweet = $_POST["text"];

//end foreach string1
  
  foreach ($show_latih as $result12) {
  ?>
    <tr>
      <td><?php echo $result12["NISN"];?></td>
      <td><?php echo $result12["nama"];?></td>
      <td><?php echo $result12["surat_miskin"];?></td>
      <td><?php echo $result12["pekerja_ortu"];?></td>
      <td><?php echo $result12["pend_ortu"];?></td>
      <td><?php echo $result12["tanggungan"];?></td>
      <td><?php echo $result12["kondisi_rumah"];?></td>
      <td><?php echo $result12["status_rumah"];?></td>
      <td><?php echo $result12["kesimpulan"];?></td>
      
    </tr>
    <?php
  }

?>

</tbody>