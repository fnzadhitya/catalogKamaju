<?php
include('../../conf/config.php');
$id = $_GET['id'];
$query = mysqli_query($koneksi, "DELETE FROM tb_job WHERE id_job='$id'");
header('Location: ../index.php?page=data-job')
?>