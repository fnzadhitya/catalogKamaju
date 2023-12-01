<?php
include('../../conf/config.php');
$id				= $_POST['id'];
$customer		= $_POST['customer'];
$nama			= $_POST['nama'];
$job			= $_POST['job'];
$jumlah			= $_POST['jumlah'];
$type			= $_POST['type'];
$merk			= $_POST['merk'];
$warna		    = $_POST['warna'];

$foto  = $_FILES['foto']['name'];
$file_tmp = $_FILES['foto']['tmp_name'];
move_uploaded_file($file_tmp, '../foto/'.$foto);

$query = mysqli_query($koneksi, "INSERT INTO tb_apd (id_apd,nama_apd,foto,id_customer,id_job,jumlah,type,merk,warna) VALUES ('','$nama','$foto','$customer','$job','$jumlah','$type','$merk','$warna')");
header('Location: ../index.php?page=data-apd')

?>