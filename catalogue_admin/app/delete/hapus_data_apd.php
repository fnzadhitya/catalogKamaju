<?php
include('../../conf/config.php');
$id = $_GET['id'];
$query = mysqli_query($koneksi, "DELETE FROM tb_apd WHERE id_apd='$id'");
header('Location: ../index.php?page=data-apd')
?>