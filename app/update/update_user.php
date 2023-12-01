<?php
include('../../conf/config.php');

$id 		= $_POST['id'];
$nama 		= $_POST['nama'];
$username	= $_POST['username'];
$password 	= $_POST['password'];

$query = mysqli_query($koneksi, "UPDATE tb_users SET nama='$nama', username='$username', password='$password' WHERE id='$id'");
header('Location: ../index.php?page=users');
?>
