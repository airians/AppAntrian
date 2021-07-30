<?php
include "../koneksi.php";

$no_pasien					= $_POST["no_pasien"];
$nama_pasien				= $_POST["nama_pasien"];
$alamat						= $_POST["alamat"];
$nama_dokter				= $_POST["nama_dokter"];
$polis						= $_POST["polis"];

$add = mysqli_query($konek, "INSERT INTO tbl_pasien (no_pasien, nama_pasien, alamat, nama_dokter, polis) VALUES
	('$no_pasien', '$nama_pasien', '$alamat','$nama_dokter','$polis')");

if ($add) {
	header("Location: index.php?data-pasien");
		exit();
	}
die ("Terdapat kesalahan : ". mysqli_error($konek));

?>
