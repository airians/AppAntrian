<?php

ob_start();
session_start();
if(isset($_SESSION['akun_username'])) header("location: index.php");
include "koneksi.php";

/*PROSES LOGIN*/
if(isset($_POST['submit-login'])) {
	$Username  = $_POST['username'];
	$Password  = md5($_POST['password']);
	$sql_login = mysqli_query($konek, "SELECT * FROM tbl_user WHERE username = '$Username' AND password = '$Password'");

	if(mysqli_num_rows($sql_login)>0) {
		$row_akun = mysqli_fetch_array($sql_login);
		$_SESSION['akun_username'] 			= $row_akun['username'];
		$_SESSION['akun_password'] 			= $row_akun['password'];
		$_SESSION['akun_id']      			= $row_akun['id_user'];
		$_SESSION['akun_nama']      		= $row_akun['nama_user'];
		$_SESSION['akun_previlleges'] 		= $row_akun['id_previlleges_user'];

		if($_SESSION['akun_previlleges'] == "1" ) {
			header("location: admin/index.php?".$_SESSION['akun_id']."". md5($_SESSION['akun_username'])."");
			exit();
		}else if($_SESSION['akun_previlleges'] == "2") {
			header("location: dokter/1/index.php?".$_SESSION['akun_id']."". md5($_SESSION['akun_username'])."");
			exit();
		}else if($_SESSION['akun_previlleges'] == "3") {
			header("location: monitor/index.php?".$_SESSION['akun_id']."". md5($_SESSION['akun_username'])."");
			exit();
		}else if($_SESSION['akun_previlleges'] == "4") {
			header("location: dokter/2/index.php?".$_SESSION['akun_id']."". md5($_SESSION['akun_username'])."");
			exit();
		}else if($_SESSION['akun_previlleges'] == "5") {
			header("location: dokter/3/index.php?".$_SESSION['akun_id']."". md5($_SESSION['akun_username'])."");
			exit();
		}else{
			header ("Location: pagenotfound.php");
			exit();
		}
	}
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Nabila Skincare</title>
	<!-- Icon -->
	<link rel="shortcut icon" type="image/icon" href="favicon.ico">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="aset/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="aset/fa/css/font-awesome.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="aset/dist/css/AdminLTE.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="aset/dist/css/AdminLTE.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="aset/plugins/iCheck/square/blue.css">
  </head>
  <body style="background-color: #F8BABB">
        <div class="container">
    <div class="login-box">
      <div class="login-logo">
      <h2 style="color: aliceblue"><center>NABILA SKINCARE</center></h2>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <b><p class="login-box-msg">Login Form</p></b>
        <form action="" method="post">
          <div class="form-group has-feedback">
            <input type="text" name="username" class="form-control" placeholder="Username" maxlength="30" />
            <span class="form-control-feedback"><i class="fa fa-user"></i></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" name="password" class="form-control" placeholder="Password" maxlength="255" />
            <span class="form-control-feedback"><i class="fa fa-unlock"></i></span>
          </div>
          <div class="row">
            <div class="col-xs-4">
              <button name="submit-login" type="submit" class="btn btn-primary">Sign In</i></button>
            </div><!-- /.col -->
          </div>
          <br>
          <br>
        </form>  
        <!--<a href="register.php"><i class="fa fa-users"></i> Register new User</a>-->

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="aset/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="aset/bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="aset/plugins/iCheck/icheck.min.js"></script>
  </body>
</html>
