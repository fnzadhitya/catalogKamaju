<?php
include('../../conf/config.php');

$id = $_POST['id'];
$nama = $_POST['nama'];

$query = mysqli_query($koneksi, "UPDATE tb_customer SET nama_customer='$nama' WHERE id_customer='$id'");

header('Location: ../index.php?page=data-customer');
?>
