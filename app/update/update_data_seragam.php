<?php
include('../../conf/config.php');

$id = $_POST['id'];
$nama = $_POST['nama'];
$customer = $_POST['customer'];
$job = $_POST['job'];
$jumlah = $_POST['jumlah'];
$bahan = $_POST['bahan'];
$logo = $_POST['logo'];
$scotlight = $_POST['scotlight'];
$warna = $_POST['warna'];

// Retrieve existing photo names from the database
$query_get_photos = mysqli_query($koneksi, "SELECT foto1, foto2 FROM tb_seragam WHERE id_seragam='$id'");
$existing_photos = mysqli_fetch_assoc($query_get_photos);

// Proses untuk foto1
$foto1 = $existing_photos['foto1'];
if (!empty($_FILES['foto1']['name'])) {
    $foto1  = $_FILES['foto1']['name'];
    $file_tmp1 = $_FILES['foto1']['tmp_name'];
    move_uploaded_file($file_tmp1, '../foto/' . $foto1);
}

// Proses untuk foto2
$foto2 = $existing_photos['foto2'];
if (!empty($_FILES['foto2']['name'])) {
    $foto2  = $_FILES['foto2']['name'];
    $file_tmp2 = $_FILES['foto2']['tmp_name'];
    move_uploaded_file($file_tmp2, '../foto/' . $foto2);
}

$query = $koneksi->prepare("UPDATE tb_seragam SET nama_seragam=?, foto1=?, foto2=?, id_customer=?, id_job=?, jumlah=?, bahan=?, logo=?, scotlight=?, warna=? WHERE id_seragam=?");
$query->bind_param("sssiiissssi", $nama, $foto1, $foto2, $customer, $job, $jumlah, $bahan, $logo, $scotlight, $warna, $id);
$query->execute();
$query->close();

header('Location: ../index.php?page=data-seragam');
?>
