<?php
include "../koneksi.php";

$id_pendaftaran				= $_POST["id_pendaftaran"];
$no_pendaftaran				= $_POST["no_pendaftaran"];
$counter					= $_POST["counter"];
$no_pasien					= $_POST["no_pasien"];
$nama_pasien				= $_POST["nama_pasien"];
$alamat						= $_POST["alamat"];
$nama_dokter				= $_POST["nama_dokter"];
$polis						= $_POST["polis"];

if ($add = mysqli_query($konek, "INSERT INTO tbl_pendaftaran (id_pendaftaran, no_pendaftaran, counter, no_pasien, nama_pasien, alamat, nama_dokter, polis) VALUES
	('$id_pendaftaran','$no_pendaftaran','$counter', '$no_pasien', '$nama_pasien', '$alamat','$nama_dokter','$polis')")){
		header("Location: index.php?pendaftaran");
		exit();
	}
die ("Terdapat kesalahan : ". mysqli_error($konek));

?>

