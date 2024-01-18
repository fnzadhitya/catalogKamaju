<?php
include('../../conf/config.php');
$id				= $_POST['id'];
$nama			= $_POST['nama'];

$foto  = $_FILES['foto']['name'];
$file_tmp = $_FILES['foto']['tmp_name'];
move_uploaded_file($file_tmp, '../foto/'.$foto);

$query = mysqli_query($koneksi, "INSERT INTO tb_customer (id_customer,nama_customer,logo_customer) VALUES ('','$nama','$foto')");
header('Location: ../index.php?page=data-customer')

?>