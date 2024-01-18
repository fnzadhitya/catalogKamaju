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

$query_get_photos = mysqli_query($koneksi, "SELECT foto FROM tb_apd WHERE id_apd='$id'");
$existing_photos = mysqli_fetch_assoc($query_get_photos);

// Inisialisasi foto dengan foto yang sudah ada
$foto = $existing_photos['foto'];

// Cek apakah ada foto baru diunggah
if (!empty($_FILES['foto']['name'])) {
    // Hapus foto lama jika dicentang
    if (!empty($_POST['hapus_foto']) && $_POST['hapus_foto'] == 'on' && !empty($existing_photos['foto'])) {
        unlink('../foto/' . $existing_photos['foto']);
        $foto = null;
    } else {
        // Jika tidak dicentang atau tidak ada foto lama, ganti foto dengan yang baru diunggah
        $foto  = $_FILES['foto']['name'];
        $file_tmp = $_FILES['foto']['tmp_name'];
        move_uploaded_file($file_tmp, '../foto/' . $foto);
    }
} elseif (!empty($_POST['hapus_foto']) && $_POST['hapus_foto'] == 'on' && !empty($existing_photos['foto'])) {
    // Hapus foto tanpa menggantinya dengan yang baru jika checkbox dicentang
    unlink('../foto/' . $existing_photos['foto']);
    $foto = null;
}

$query = $koneksi->prepare("UPDATE tb_apd SET nama_apd=?, foto=?, id_customer=?, id_job=?, jumlah=?, type=?, merk=?, warna=? WHERE id_apd=?");
$query->bind_param("ssiiisssi", $nama, $foto, $customer, $job, $jumlah, $type, $merk, $warna, $id);
$query->execute();
$query->close();

header('Location: ../index.php?page=data-apd');
?>
