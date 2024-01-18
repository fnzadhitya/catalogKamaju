<?php
include('../../conf/config.php');
$id = $_GET['id'];
$query = mysqli_query($koneksi, "DELETE FROM tb_seragam WHERE id_seragam='$id'");
header('Location: ../index.php?page=data-seragam')
?>