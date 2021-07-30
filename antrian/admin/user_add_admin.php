<?php

include "../koneksi.php";

$Id_Usergroup_User	= $_POST["Id_Usergroup_User"];
$Username 					= $_POST["Username"];
$Password 					= $_POST["Password"];
$Password_Verify 		= $_POST["Password_Verify"];
$Password_Hash 			= password_hash($Password, PASSWORD_DEFAULT);

$register = mysqli_query ($konek, "INSERT INTO user (Id_Usergroup_User, Username, Password) VALUES ('$Id_Usergroup_User', '$Username', '$Password_Hash')");

// Validasi Register
if ($_POST){
	
	if(empty ($Username) && empty ($Password) && empty ($Level)){
		header ("Location: user_admin.php?Err=1");
		exit();
	}
	else if(empty ($Username)){
		header ("Location: user_admin.php?Err=2");
		exit();
	}
	else if(empty ($Password)){
		header ("Location: user_admin.php?Err=3");
		exit();
	}
	else if($Password != $Password_Verify){
		header ("Location: user_admin.php?Err=5");
		exit();
	}
	else{
		header ("Location: user.php?Notif=1");
		exit();
	}
}
die("Terdapat Kesalahan : ". mysqli_error($konek));

?>