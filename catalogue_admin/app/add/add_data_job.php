<?php
include('../../conf/config.php');
$id			= $_POST['id'];
$nama		= $_POST['nama'];

$query = mysqli_query($koneksi, "INSERT INTO tb_job (id_job,nama_job) VALUES ('','$nama')");
header('Location: ../index.php?page=data-job')

?>