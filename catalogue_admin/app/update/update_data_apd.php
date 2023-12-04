<?php
include('../../conf/config.php');

$id = $_POST['id'];
$nama = $_POST['nama'];
$customer = $_POST['customer'];
$job = $_POST['job'];
$jumlah = $_POST['jumlah'];
$type = $_POST['type'];
$merk = $_POST['merk'];
$warna = $_POST['warna'];

// Retrieve existing photo names from the database
$query_get_photos = mysqli_query($koneksi, "SELECT foto FROM tb_apd WHERE id_apd='$id'");
$existing_photos = mysqli_fetch_assoc($query_get_photos);

// Proses untuk foto
$foto = $existing_photos['foto'];
if (!empty($_FILES['foto']['name'])) {
    $foto  = $_FILES['foto']['name'];
    $file_tmp = $_FILES['foto']['tmp_name'];
    move_uploaded_file($file_tmp, '../foto/' . $foto);
}


$query = $koneksi->prepare("UPDATE tb_apd SET nama_apd=?, foto=?, id_customer=?, id_job=?, jumlah=?, type=?, merk=?, warna=? WHERE id_apd=?");
$query->bind_param("ssiiisssi", $nama, $foto, $customer, $job, $jumlah, $type, $merk, $warna, $id);
$query->execute();
$query->close();

header('Location: ../index.php?page=data-apd');
?>