<?php

	ob_start();
	session_start();
	include "../../koneksi.php";
	if(isset($_SESSION['akun_id'])){
		
		if(isset($_GET['akun_id'])){
		$id_user=$_GET['akun_id'];
	}
	
	if(empty($_GET['akun_id'])){
		$id_user=$_SESSION['akun_id'];
	}
	$query=mysqli_fetch_array(mysqli_query($konek, "select * from tbl_user where id_user='$id_user'"));	
	$nama_dokter=$query['nama_user'];

	if (!isset($_SESSION["loket_client"]))
	{
		$_SESSION["loket_client"] = 0;
	}
?>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8">
    <title>NABILA SKINCARE</title>
	<!-- Library CSS -->
	<?php
		include "bundle_css.php";
	?>
  </head>
  <body class="hold-transition skin-blue sidebar-mini fixed">
    <div class="wrapper">
      <?php
        include 'content_header.php';
       ?>

      <?php
      if (isset($_GET['tabel-user'])){
		  include "user.php";
	  }else if (isset($_GET['data-pasien'])){
		 include "pasien.php";
	  }else if (isset($_GET['rekamedis'])){
		 include "rekamedis.php";
	  }else if (isset($_GET['logout'])){
		 include "../../logout.php";
	  }else if (isset($_GET['readmail'])){
		 include "mailbox/read-mail.php";
	  }else{
		  include "dashboard.php";
	  }
	  ?>
	  </div>
	<?php
		include "bundle_script.php";
	?>
  </body>
</html>
<?php
	}
?>
<?php
	mysqli_close($konek);
	ob_end_flush();
?>
