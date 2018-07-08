<?php
	// include Database connection file 
	$DBuser = "root";
	$DBpass = "";
	$DBhost = "localhost";
	$DBname = "datmin_beasiswa";
	  
	$DBcon = new MySQLi($DBhost,$DBuser,$DBpass,$DBname);
    
     if ($DBcon->connect_errno) {
         die("ERROR : -> ".$DBcon->connect_error);
     }

	if(isset($_REQUEST['data'])){
		if($_REQUEST['data'] == "real"){
			$dataT = "data_training";
		}elseif($_REQUEST['data'] == "coba"){
			$dataT = "data_training_try";
		}else{
			$dataT = "data_training_bab3";
		}
	}
	else{
		$dataT = 'data_training';
	}
		
			try{
				// Design initial table header 
				$data = '';
				
				$resdata = mysqli_query($DBcon, "SELECT * FROM $dataT;");
				// var_dump($resdata);
			    // if query results contains rows then featch those rows 
			    
			    	$number = 1;
			    	foreach($resdata as $row)
			    	{
			    		$data .= '<tr>
							<td>'.$row['NISN'].'</td>
							<td>'.$row['nama'].'</td>
							<td>'.$row['surat_miskin'].'</td>
							<td>'.$row['pekerja_ortu'].'</td>
							<td>'.$row['pend_ortu'].'</td>
							<td>'.$row['tanggungan'].'</td>
							<td>'.$row['kondisi_rumah'].'</td>
							<td>'.$row['status_rumah'].'</td>
							<td>'.$row['keterangan'].'</td>
							
			    		</tr>';
			    		$number++;
			    	}
			    
			    

			    

			    echo $data;
		}catch (PDOException $e) {
    		echo "<br>".$e->getMessage();
  		}
		
    
?>