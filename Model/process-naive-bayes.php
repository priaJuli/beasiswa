
<?php 
		ini_set('max_execution_time', 4800);
		
// process_prob();
// process_prob_try();
// process_prob_bab3();

	// process_naive("TIDAK TETAP", "500RB-1JT", "SEDANG", "SEDERHANA", "KONTRAK");
		
// process_naive("TETAP", "500RB-1JT", "BANYAK", "SEDERHANA", "NUMPANG");
	if(isset($_POST['naive'])){
		$nama = $_POST['nama'];
		$NISN = $_POST['NISN'];
		$surat = $_POST['surat'];
		$work = $_POST['work'];
		$salary = $_POST['salary'];
		$respon = $_POST['respon'];
		$condt = $_POST['condt'];
		$status = $_POST['status'];
		if($_POST['data-training'] == 'real'){
			$tabel = "data_training";
		}elseif($_POST['data-training'] == 'coba'){
			$tabel = "data_training_try";
		}else{
			$tabel = "data_training_bab3";
		}
		$result = process_naive($work, $salary, $respon, $condt, $status);
		echo "Hasil ".$result;
	}
// process_naive("TETAP", ">1JT", "BANYAK", "LAYAK", "PRIBADI");

	function naive_testing(){
		$DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

		/* check connection */
		if (mysqli_connect_errno()) {
		    printf("Connect failed: %s\n", mysqli_connect_error());
		    exit();
		}
		
		// process_prob();

		$query = "SELECT * FROM data_testing";
		$result1 = mysqli_query($DBcon, $query);
		while ($row2 = $result1->fetch_assoc()){
			// echo 'Siswa dengan NISN '.$row2['NISN']." prediksi ";
			$nisn = $row2['NISN'];
			$res_layak = process_naive($row2['pekerja_ortu'], $row2['pend_ortu'], $row2['tanggungan'], $row2['kondisi_rumah'], $row2['status_rumah']);
			// echo $res_layak."<br>";
							// echo "NISN ".$row2['NISN']." Berhasil hasil kelayakan ".$res_layak."<br>";

			$update_layak = mysqli_query($DBcon, "UPDATE data_testing SET kesimpulan='$res_layak' WHERE NISN=$nisn");
			if($update_layak){
				// echo "NISN ".$row2['NISN']." Berhasil hasil kelayakan ".$res_layak."<br>";
			}else{
				// echo "GAGAL";
			}
		}
	}

	function process_naive($work, $salary, $respon, $condt, $stts){
		$DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

		/* check connection */
		if (mysqli_connect_errno()) {
		    printf("Connect failed: %s\n", mysqli_connect_error());
		    exit();
		}
		
		$result1 = mysqli_query($DBcon, "SELECT * FROM prob_yes WHERE keterangan='LAYAK'");
		$res_tot_yes = mysqli_query($DBcon, "SELECT SUM(value) AS total FROM prob_yes WHERE keterangan='LAYAK'");
		$total_yes = $res_tot_yes->fetch_assoc()['total'] / 5;
		$res_tot_no = mysqli_query($DBcon, "SELECT SUM(value) AS total FROM prob_yes WHERE keterangan='TIDAK LAYAK'");
		$total_no = $res_tot_no->fetch_assoc()['total'] / 5;
		
		$hasil_layak = 1;
		while ($row1 = $result1->fetch_assoc()) {
			if($row1['atribut'] == 'pekerja_ortu'){
				if($row1['text'] == $work){
					$hasil_layak *= ($row1['value']/$total_yes);
					// echo "<br>".$row1['value'].'/'.$total_yes;
				}
			}elseif($row1['atribut'] == 'pend_ortu'){
				if($row1['text'] == $salary){
					$hasil_layak *= ($row1['value']/$total_yes);
					// echo "<br>".$row1['value'].'/'.$total_yes;
				}
			}elseif($row1['atribut'] =='tanggungan'){
				if($row1['text'] == $respon){
					$hasil_layak *= ($row1['value']/$total_yes);
					// echo "<br>".$row1['value'].'/'.$total_yes;
				}
			}elseif($row1['atribut']=='kondisi_rumah'){
				if($row1['text'] == $condt){
					$hasil_layak *= ($row1['value']/$total_yes);
					// echo "<br>".$row1['value'].'/'.$total_yes;
				}
			}elseif($row1['atribut'] == 'status_rumah'){
				if($row1['text'] == $stts){
					$hasil_layak *= ($row1['value']/$total_yes);
					// echo "<br>".$row1['value'].'/'.$total_yes;
				}
			}
		}
		$hasil_layak *= ($total_yes/100);
		$hasil_layak = number_format($hasil_layak, 8);
		// echo "<br>".$hasil_layak;

		$hasil_tidak = 1;
		$result2 = mysqli_query($DBcon, "SELECT * FROM prob_yes WHERE keterangan='TIDAK LAYAK'");
		while ($row1 = $result2->fetch_assoc()) {
			if($row1['atribut'] == 'pekerja_ortu'){
				if($row1['text'] == $work){
					$hasil_tidak *= ($row1['value']/$total_no);
					// echo "<br>".$row1['value'].'/'.$total_no;
				}
			}elseif($row1['atribut'] == 'pend_ortu'){
				if($row1['text'] == $salary){
					$hasil_tidak *= ($row1['value']/$total_no);
					// echo "<br>".$row1['value'].'/'.$total_no;
				}
			}elseif($row1['atribut'] =='tanggungan'){
				if($row1['text'] == $respon){
					$hasil_tidak *= ($row1['value']/$total_no);
					// echo "<br>".$row1['value'].'/'.$total_no;
				}
			}elseif($row1['atribut']=='kondisi_rumah'){
				if($row1['text'] == $condt){
					$hasil_tidak *= ($row1['value']/$total_no);
					// echo "<br>".$row1['value'].'/'.$total_no;
				}
			}elseif($row1['atribut'] == 'status_rumah'){
				if($row1['text'] == $stts){
					$hasil_tidak *= ($row1['value']/$total_no);
					// echo "<br>".$row1['value'].'/'.$total_no;
				}
			}
		}
		$hasil_tidak *= ($total_no/100);
		$hasil_tidak = number_format($hasil_tidak, 8);
		// echo "<br>".$hasil_tidak;
		
		if($hasil_tidak > $hasil_layak){
			return "TIDAK LAYAK";
		}else{
			return "LAYAK";
		}
	}

	function process_prob()
	{
		$DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

		/* check connection */
		if (mysqli_connect_errno()) {
		    printf("Connect failed: %s\n", mysqli_connect_error());
		    exit();
		}

		$query = "SELECT * FROM data_training";
		$result1 = mysqli_query($DBcon, $query);
		while ($row1 = $result1->fetch_assoc()) {
			$ket_layak = $row1["keterangan"];
			// if($row1["keterangan"] == "LAYAK"){
				foreach ($row1 as $atr => $value) {
					if($atr != "id" && $atr != "NISN" && $atr != "nama" && $atr != "surat_miskin" && $atr != "keterangan") {
						
						$cek_atr = mysqli_query($DBcon, "SELECT * FROM prob_yes WHERE text='$value' AND atribut='$atr' AND keterangan='$ket_layak';");
						// print_r($cek_atr);

						if(mysqli_num_rows($cek_atr) < 1){
							// echo " ATR YES";
							
							$insert_term = mysqli_query($DBcon, "INSERT INTO prob_yes(atribut,text,value,keterangan) VALUES ('$atr', '$value', 1, '$ket_layak')");	
						}else{
							$new_value = $cek_atr->fetch_assoc()['value'] +1;
							$update_term = mysqli_query($DBcon, "UPDATE prob_yes SET value=$new_value WHERE text='$value' AND keterangan='$ket_layak';");
							// echo "ATR ".$value." telah ada";
						}
					}
				}
			
			// echo "<br>";
		}
	}

	function process_prob_try()
	{
		$DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

		/* check connection */
		if (mysqli_connect_errno()) {
		    printf("Connect failed: %s\n", mysqli_connect_error());
		    exit();
		}

		$query = "SELECT * FROM data_training_try";
		$result1 = mysqli_query($DBcon, $query);
		while ($row1 = $result1->fetch_assoc()) {
			$ket_layak = $row1["keterangan"];
			// if($row1["keterangan"] == "LAYAK"){
				foreach ($row1 as $atr => $value) {
					if($atr != "id" && $atr != "NISN" && $atr != "nama" && $atr != "surat_miskin" && $atr != "keterangan") {
						
						$cek_atr = mysqli_query($DBcon, "SELECT * FROM prob_yes_try WHERE text='$value' AND atribut='$atr' AND keterangan='$ket_layak';");
						// print_r($cek_atr);

						if(mysqli_num_rows($cek_atr) < 1){
							// echo " ATR YES";
							
							$insert_term = mysqli_query($DBcon, "INSERT INTO prob_yes_try(atribut,text,value,keterangan) VALUES ('$atr', '$value', 1, '$ket_layak')");	
						}else{
							$new_value = $cek_atr->fetch_assoc()['value'] +1;
							$update_term = mysqli_query($DBcon, "UPDATE prob_yes_try SET value=$new_value WHERE text='$value' AND keterangan='$ket_layak';");
							// echo "ATR ".$value." telah ada";
						}
					}
				}
			
			// echo "<br>";
		}
	}

	function process_prob_bab3()
	{
		$DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

		/* check connection */
		if (mysqli_connect_errno()) {
		    printf("Connect failed: %s\n", mysqli_connect_error());
		    exit();
		}

		$query = "SELECT * FROM data_training_bab3";
		$result1 = mysqli_query($DBcon, $query);
		while ($row1 = $result1->fetch_assoc()) {
			$ket_layak = $row1["keterangan"];
			// if($row1["keterangan"] == "LAYAK"){
				foreach ($row1 as $atr => $value) {
					if($atr != "id" && $atr != "NISN" && $atr != "nama" && $atr != "surat_miskin" && $atr != "keterangan") {
						
						$cek_atr = mysqli_query($DBcon, "SELECT * FROM prob_yes_bab3 WHERE text='$value' AND atribut='$atr' AND keterangan='$ket_layak';");
						// print_r($cek_atr);

						if(mysqli_num_rows($cek_atr) < 1){
							// echo " ATR YES";
							
							$insert_term = mysqli_query($DBcon, "INSERT INTO prob_yes_bab3(atribut,text,value,keterangan) VALUES ('$atr', '$value', 1, '$ket_layak')");	
						}else{
							$new_value = $cek_atr->fetch_assoc()['value'] +1;
							$update_term = mysqli_query($DBcon, "UPDATE prob_yes_bab3 SET value=$new_value WHERE text='$value' AND keterangan='$ket_layak';");
							// echo "ATR ".$value." telah ada";
						}
					}
				}
			
			// echo "<br>";
		}
	}

?>

