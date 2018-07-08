<?php
	$DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

	/* check connection */
	if (mysqli_connect_errno()) {
	    printf("Connect failed: %s\n", mysqli_connect_error());
	    exit();
	}

	if(isset($_REQUEST['id'])){
		$id = $_REQUEST['id'];
		$q_del = mysqli_query($DBcon, "DELETE FROM data_training WHERE id=$id;");
		if($q_del){
			echo "<script>alert('Data training berhasil dihapus'); window.location.href='index.php?halaman=training';</script>";
		}
	}

?>