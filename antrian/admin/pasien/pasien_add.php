<?php
include "../koneksi.php";

$id_pasien					= $_POST["id_pasien"];
$no_pasien					= $_POST["no_pasien"];
$nama_pasien				= $_POST["nama_pasien"];
$alamat						= $_POST["alamat"];

if ($add = mysqli_query($konek, "INSERT INTO tbl_pasien (id_pasien, no_pasien, nama_pasien, alamat) VALUES 
	('$id_pasien', '$no_pasien', '$nama_pasien', '$alamat')")){
		header("Location: index.php?data-pasien");
		exit();
	}
die ("Terdapat kesalahan : ". mysqli_error($konek));

?>