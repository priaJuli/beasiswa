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
      <th>Action</th>
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
      <th>Action</th>
      
    </tr>
  </tfoot>
  <tbody id="data-content">
<?php 

ini_set('max_execution_time', 300);

//`text_twitter`
  

//$tweet = $_POST["text"];

//end foreach string1
  
  foreach ($show_latih as $result12) {
    $id = $result12['id'];
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
      <td><a id="deluji" onclick="ConfirmDelete('Model/process-del-uji.php?id=<?php echo $id;?>')"><i class="fa fa-trash fa-fw"></i></a> </td>
    </tr>
    <?php
  }

?>

</tbody>