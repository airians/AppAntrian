<?php
include "../koneksi.php";

$move = mysqli_query($konek, "INSERT INTO tbl_historydaftar (id_pendaftaran, counter, no_pasien, nama_pasien, alamat, nama_dokter, polis, waktu) SELECT id_pendaftaran, counter, no_pasien, nama_pasien, alamat, nama_dokter, polis, waktu FROM tbl_pendaftaran");

$truncate = mysqli_query($konek, "TRUNCATE tbl_pendaftaran");

if ($move) {
	header("Location: index.php?pendaftaran");
		exit();
	}
die ("Terdapat kesalahan : ". mysqli_error($konek));

?>

