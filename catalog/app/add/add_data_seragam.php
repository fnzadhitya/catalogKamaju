<?php
include('../../conf/config.php');
$id				= $_POST['id'];
$nama		= $_POST['nama'];
$customer		= $_POST['customer'];
$job			= $_POST['job'];
$jumlah			= $_POST['jumlah'];
$bahan			= $_POST['bahan'];
$logo			= $_POST['logo'];
$scotlight		= $_POST['scotlight'];
$warna		    = $_POST['warna'];

$foto1  = $_FILES['foto1']['name'];
$file_tmp1 = $_FILES['foto1']['tmp_name'];
move_uploaded_file($file_tmp1, '../foto/'.$foto1);

$foto2  = $_FILES['foto2']['name'];
$file_tmp2 = $_FILES['foto2']['tmp_name'];
move_uploaded_file($file_tmp2, '../foto/'.$foto2);

$query = mysqli_query($koneksi, "INSERT INTO tb_seragam (id_seragam,nama_seragam,foto1,foto2,id_customer,id_job,jumlah,bahan,logo,scotlight,warna) VALUES ('','$nama','$foto1','$foto2','$customer','$job','$jumlah','$bahan','$logo','$scotlight','$warna')");
header('Location: ../index.php?page=data-seragam')

?>