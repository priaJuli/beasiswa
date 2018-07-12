<?php
	$DBcon = mysqli_connect("localhost", "root", "", "datmin_beasiswa");

	/* check connection */
	if (mysqli_connect_errno()) {
	    printf("Connect failed: %s\n", mysqli_connect_error());
	    exit();
	}

	if(isset($_REQUEST['id'])){
		$id = $_REQUEST['id'];
		$q_del = mysqli_query($DBcon, "DELETE FROM users WHERE username='$id';");
		if($q_del){
			echo "<script>alert('Data training berhasil dihapus'); window.location.href='index.php?halaman=data-user';</script>";
		}
	}

?>