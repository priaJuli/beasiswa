
<?php 
// ini_set('max_execution_time', 4800);
// include '../config/koneksi.php';
  
 //  $DBcon = new MySQLi($DBhost,$DBuser,$DBpass,$DBname);
    
 //     if ($DBcon->connect_errno) {
 //         die("ERROR : -> ".$DBcon->connect_error);
 //     }

	// $tweet = mysqli_query($DBcon, "SELECT * FROM `term_text_twitter`");
	// $string1 = array();
	// $k = 0;
	
	process_naive("tidak_tetap", ">1000", "ada", "layak", "kontrak", "tidak", "tanah");

	function process_naive($work, $salary, $respon, $condt, $stts, $bank, $floor){
		$DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

		/* check connection */
		if (mysqli_connect_errno()) {
		    printf("Connect failed: %s\n", mysqli_connect_error());
		    exit();
		}
		$totaldata = array();
		$qu = "SELECT COUNT(*) FROM data_training WHERE keterangan = 'yes';";
		$qu .= "SELECT COUNT(*) FROM data_training WHERE keterangan = 'no';";
		$qu .= "SELECT COUNT(*) FROM data_training;";
		if(mysqli_multi_query($DBcon, $qu)){
			do{
				if($res1 = mysqli_store_result($DBcon)){
					while ($row1 = mysqli_fetch_row($res1)) {
						array_push($totaldata, $row1[0]);
					}
				}
			} while(mysqli_next_result($DBcon));
		}
		$probyes = array();
		$query = "SELECT * FROM data_training WHERE keterangan = 'yes';";
		$result1 = mysqli_query($DBcon, $query);
		while ($row2 = $result1->fetch_assoc()) {
			// pekerjaan ortu
			if(!isset($probyes["work"]) && ($row2["pekerja_ortu"] == $work)){
				$probyes["work"] = array("value" => $row2["pekerja_ortu"], "count" => 1);				
			}elseif($row2["pekerja_ortu"] == $work){
				$probyes["work"]["count"]++;
			}
			 
			// pendapatan ortu
			if(!isset($probyes["salary"]) && ($row2["pend_ortu"] == $salary)){
				$probyes["salary"] = array("value" => $row2["pend_ortu"], "count" => 1);				
			}elseif($row2["pend_ortu"] == $salary){
				$probyes["salary"]["count"]++;
			}

			// Tanggungan
			if(!isset($probyes["tanggungan"]) && ($row2["tanggungan"] == $respon)){
				$probyes["tanggungan"] = array("value" => $row2["tanggungan"], "count" => 1);				
			}elseif($row2["tanggungan"] == $respon){
				$probyes["tanggungan"]["count"]++;
			}

			// kondisi rumah
			if(!isset($probyes["kondisi_rumah"]) && ($row2["kondisi_rumah"] == $condt)){
				$probyes["kondisi_rumah"] = array("value" => $row2["kondisi_rumah"], "count" => 1);				
			}elseif($row2["kondisi_rumah"] == $condt){
				$probyes["kondisi_rumah"]["count"]++;
			}

			// status rumah
			if(!isset($probyes["status_rumah"]) && ($row2["status_rumah"] == $stts)){
				$probyes["status_rumah"] = array("value" => $row2["status_rumah"], "count" => 1);				
			}elseif($row2["status_rumah"] == $stts){
				$probyes["status_rumah"]["count"]++;
			}

			// tabungan
			if(!isset($probyes["tabungan"]) && ($row2["tabungan"] == $bank)){
				$probyes["tabungan"] = array("value" => $row2["tabungan"], "count" => 1);				
			}elseif($row2["tabungan"] == $bank){
				$probyes["tabungan"]["count"]++;
			}

			// jenis_lantai
			if(!isset($probyes["jenis_lantai"]) && ($row2["jenis_lantai"] == $floor)){
				$probyes["jenis_lantai"] = array("value" => $row2["jenis_lantai"], "count" => 1);				
			}elseif($row2["jenis_lantai"] == $floor){
				$probyes["jenis_lantai"]["count"]++;
			}
		}
		$probno = array();

		$query = "SELECT * FROM data_training WHERE keterangan = 'no';";
		$result2 = mysqli_query($DBcon, $query);
		while ($row3 = $result2->fetch_assoc()) {
			// pekerjaan ortu
			if(!isset($probno["work"]) && ($row3["pekerja_ortu"] == $work)){
				$probno["work"] = array("value" => $row3["pekerja_ortu"], "count" => 1);				
			}elseif($row3["pekerja_ortu"] == $work){
				$probno["work"]["count"]++;
			}
			 
			// pendapatan ortu
			if(!isset($probno["salary"]) && ($row3["pend_ortu"] == $salary)){
				$probno["salary"] = array("value" => $row3["pend_ortu"], "count" => 1);				
			}elseif($row3["pend_ortu"] == $salary){
				$probno["salary"]["count"]++;
			}

			// Tanggungan
			if(!isset($probno["tanggungan"]) && ($row3["tanggungan"] == $respon)){
				$probno["tanggungan"] = array("value" => $row3["tanggungan"], "count" => 1);				
			}elseif($row3["tanggungan"] == $respon){
				$probno["tanggungan"]["count"]++;
			}

			// kondisi rumah
			if(!isset($probno["kondisi_rumah"]) && ($row3["kondisi_rumah"] == $condt)){
				$probno["kondisi_rumah"] = array("value" => $row3["kondisi_rumah"], "count" => 1);				
			}elseif($row3["kondisi_rumah"] == $condt){
				$probno["kondisi_rumah"]["count"]++;
			}

			// status rumah
			if(!isset($probno["status_rumah"]) && ($row3["status_rumah"] == $stts)){
				$probno["status_rumah"] = array("value" => $row3["status_rumah"], "count" => 1);				
			}elseif($row3["status_rumah"] == $stts){
				$probno["status_rumah"]["count"]++;
			}

			// tabungan
			if(!isset($probno["tabungan"]) && ($row3["tabungan"] == $bank)){
				$probno["tabungan"] = array("value" => $row3["tabungan"], "count" => 1);				
			}elseif($row3["tabungan"] == $bank){
				$probno["tabungan"]["count"]++;
			}

			// jenis_lantai
			if(!isset($probno["jenis_lantai"]) && ($row3["jenis_lantai"] == $floor)){
				$probno["jenis_lantai"] = array("value" => $row3["jenis_lantai"], "count" => 1);				
			}elseif($row3["jenis_lantai"] == $floor){
				$probno["jenis_lantai"]["count"]++;
			}
			 
		}
		// print_r($probno);
		echo "Probabilitas no<br>";
		$nilai_attr = 0;
		$nilai_nb_no = 1;
		$inti = 0;
		$sqlprob = ""
		while (list($key, $listdata) = each($probno)) {
		       $inti++;
		       echo "".$key."  ";
		       while (list($value, $count) = each($listdata)) {
		       	
		       	
		       	if($value == 'count'){
		       		$nilai_attr = $count / $totaldata[1];
		       		echo $count."/".$totaldata[1];
		       	}else{
		       		echo $value .' == '.$count;echo "<br>";
		       	}
		       }
		       echo "Nilai prob attribut ".$nilai_attr."<br>";
		       $nilai_nb_no *= number_format($nilai_attr, 3);
		}

		echo $totaldata[0]."/".$totaldata[2];
		$nilai_nb_no *= $totaldata[1] / $totaldata[2];
		if($inti < 7){
			$nilai_nb_no = 0;
		}
		echo "<br>Nilai naive bayes NO = ".$nilai_nb_no."<br>";
		echo "<br>";
		// print_r($probyes);
		echo "Probabilitas yes<br>";
		$nilai_attr = 0;
		$nilai_nb_yes = 1;
		$inti = 0;
		while (list($key, $listdata) = each($probyes)) {
			$inti++; 
		       echo "".$key."  ";
		       while (list($value, $count) = each($listdata)) {
		       	
		       	
		       	if($value == 'count'){
		       		$nilai_attr = $count / $totaldata[0];
		       		echo $count."/".$totaldata[0];
		       	}else{
		       		echo $value .' == '.$count;echo "<br>";
		       	}
		       }
		       echo "Nilai prob attribut ".$nilai_attr."<br>";
		       $nilai_nb_yes *= number_format($nilai_attr, 3);
		}
		echo $totaldata[0]."/".$totaldata[2];
		$nilai_nb_yes *= $totaldata[0] / $totaldata[2];
		if($inti < 7){
			$nilai_nb_no = 0;
		}
		echo "<br>Nilai naive bayes YES = ".$nilai_nb_yes."<br><br>";

		if($nilai_nb_yes > $nilai_nb_no){
			echo "Prediksi naive bayes termasuk ke dalam klasifikasi Yes";
		}else{
			echo "Prediksi naive bayes termasuk ke dalam klasifikasi No";
		}
	}
?>

