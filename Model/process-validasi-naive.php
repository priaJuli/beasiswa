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
$layak_uji = mysqli_query($DBcon, "SELECT COUNT(*) FROM `data_testing` WHERE kesimpulan='LAYAK' AND id BETWEEN 1 AND 100");
$tidak_uji = mysqli_query($DBcon, "SELECT COUNT(*) FROM `data_testing` WHERE kesimpulan='TIDAK LAYAK' AND id BETWEEN 1 AND 100");

$result = $layak_uji->fetch_row()[0];
$result1 = $tidak_uji->fetch_row()[0];

$miss = abs($res - $result);


echo "<br>| ". $res ." | ".$miss." |";
echo "<br>| ". $miss ." | ".$res1." |";

// echo "<br>".$result."->".$result1;


// $cek = mysqli_query($DBcon, "SELECT * FROM data_training A, data_testing B WHERE A.id = B.id AND A.keterangan='LAYAK'");
// // var_dump($cek);
// // echo $cek->num_rows;
// foreach ($cek as $row5) {
// 	echo "<br>".$row5['NISN']." -> ".$row5['keterangan']." -> ".$row5['kesimpulan'];
}

?>