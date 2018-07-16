<?php 

ini_set('max_execution_time', 300);

$DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

		/* check connection */
		if (mysqli_connect_errno()) {
		    printf("Connect failed: %s\n", mysqli_connect_error());
		    exit();
		}

$layak_latih = mysqli_query($DBcon, "SELECT COUNT(*) FROM `data_training` WHERE keterangan='LAYAK' AND id BETWEEN 1 AND 100");
$tidak_latih = mysqli_query($DBcon, "SELECT COUNT(*) FROM `data_training` WHERE keterangan='TIDAK LAYAK' AND id BETWEEN 1 AND 100");
$res = $layak_latih->fetch_row()[0];
$res1 = $tidak_latih->fetch_row()[0];

// echo $res."->".$res1;
// $layak_uji = mysqli_query($DBcon, "SELECT COUNT(*) FROM `data_testing` WHERE kesimpulan='LAYAK' AND id BETWEEN 1 AND 100");
// $tidak_uji = mysqli_query($DBcon, "SELECT COUNT(*) FROM `data_testing` WHERE kesimpulan='TIDAK LAYAK' AND id BETWEEN 1 AND 100");

// $result = $layak_uji->fetch_row()[0];
// $result1 = $tidak_uji->fetch_row()[0];

// $miss = abs($res - $result);


// echo "<br>| ". $res ." | ".$miss." |";
// echo "<br>| ". $miss ." | ".$res1." |";

// echo "<br>".$result."->".$result1;

?>
	<thead>
    <tr>
      <th>True/Prediksi</th>
      <th>True Layak</th>
      <th>True Tidak Layak</th>
      
    </tr>
  </thead>
  <tfoot>
    <tr>
      <th>True/Prediksi</th>
      <th>True Layak</th>
      <th>True Tidak Layak</th>
      
    </tr>
  </tfoot>
  <tbody id="data-content">
<?php

$cek = mysqli_query($DBcon, "SELECT * FROM data_training A, data_testing B WHERE A.id = B.id AND A.keterangan='LAYAK' AND B.kesimpulan='TIDAK LAYAK'");
// var_dump($cek);
$miss = $cek->num_rows;

$cek1 = mysqli_query($DBcon, "SELECT * FROM data_training A, data_testing B WHERE A.id = B.id AND A.keterangan='TIDAK LAYAK' AND B.kesimpulan='LAYAK'");
// var_dump($cek);
$miss1 = $cek1->num_rows;

?>
	<tr>
		<td>Prediksi Layak</td>
		<td><?php echo ($res - $miss); ?></td>
		<td><?php echo $miss; ?></td>
	</tr>
	<tr>
		<td>Prediksi Tidak Layak</td>
		<td><?php echo $miss1; ?></td>
		<td><?php echo ($res1 - $miss1); ?></td>
	</tr>
<?php

// foreach ($cek as $row5) {
// 	echo "<br>".$row5['NISN']." -> ".$row5['keterangan']." -> ".$row5['kesimpulan'];
// }

?>