<?php

	ob_start();
	session_start();
	if(isset($_SESSION['akun_id']));
	include "../koneksi.php";

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
	  }else if (isset($_GET['antrian'])){
		 include "antrian.php";
	  }else if (isset($_GET['data-user'])){
		 include "user.php";
	  }else if (isset($_GET['pendaftaran'])){
		 include "pendaftaran.php";
	  }else if (isset($_GET['history-daftar'])){
		 include "history.php";
	  }else if (isset($_GET['logout'])){
		 include "../logout.php";
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
	<!-- Javascript Edit-->
	<script type="text/javascript">
		$(document).ready(function () {

		// Pelanggan
		$(".open_modal").click(function(e) {
			var m = $(this).attr("id");
				$.ajax({
					url: "pasien_modal_edit.php",
					type: "GET",
					data : {id_pasien: m,},
					success: function (ajaxData){
					$("#ModalEditPasien").html(ajaxData);
					$("#ModalEditPasien").modal('show',{backdrop: 'true'});
					}
				});
			});

	</script>
  </body>
</html>
<?php
	mysqli_close($konek);
	ob_end_flush();
?>
