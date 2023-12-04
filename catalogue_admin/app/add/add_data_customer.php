<?php
include('../../conf/config.php');
$id				= $_POST['id'];
$nama		= $_POST['nama'];

$query = mysqli_query($koneksi, "INSERT INTO tb_customer (id_customer,nama_customer) VALUES ('','$nama')");
header('Location: ../index.php?page=data-customer')

?>