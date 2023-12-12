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

$query_get_photos = mysqli_query($koneksi, "SELECT foto1, foto2 FROM tb_seragam WHERE id_seragam='$id'");
$existing_photos = mysqli_fetch_assoc($query_get_photos);

if (!empty($_FILES['foto1']['name'])) {
    if (!empty($_POST['hapus_foto1']) && $_POST['hapus_foto1'] == 'on') {
        unlink('../foto/' . $existing_photos['foto1']);
        $existing_photos['foto1'] = null; 
    }

    $foto1  = $_FILES['foto1']['name'];
    $file_tmp1 = $_FILES['foto1']['tmp_name'];
    move_uploaded_file($file_tmp1, '../foto/' . $foto1);
}

if (!empty($_FILES['foto2']['name'])) {
    if (!empty($_POST['hapus_foto2']) && $_POST['hapus_foto2'] == 'on') {
        unlink('../foto/' . $existing_photos['foto2']);
        $existing_photos['foto2'] = null;
    }

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
