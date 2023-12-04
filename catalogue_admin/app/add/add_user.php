<?php
include('../../conf/config.php');
$id			= $_POST['id'];
$nama		= $_POST['nama'];
$username	= $_POST['username'];
$password	= $_POST['password'];

$query = mysqli_query($koneksi, "INSERT INTO tb_users (id,nama,username,password) VALUES ('','$nama','$username','$password')");
header('Location: ../index.php?page=users')

?>