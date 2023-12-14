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

// Inisialisasi foto1 dan foto2 dengan foto yang sudah ada
$foto1 = $existing_photos['foto1'];
$foto2 = $existing_photos['foto2'];

// Cek apakah ada foto baru diunggah
if (!empty($_FILES['foto1']['name'])) {
    // Hapus foto1 lama jika dicentang
    if (!empty($_POST['hapus_foto1']) && $_POST['hapus_foto1'] == 'on' && !empty($existing_photos['foto1'])) {
        unlink('../foto/' . $existing_photos['foto1']);
        $foto1 = null;
    } else {
        // Jika tidak dicentang atau tidak ada foto lama, ganti foto1 dengan yang baru diunggah
        $foto1  = $_FILES['foto1']['name'];
        $file_tmp1 = $_FILES['foto1']['tmp_name'];
        move_uploaded_file($file_tmp1, '../foto/' . $foto1);
    }
} elseif (!empty($_POST['hapus_foto1']) && $_POST['hapus_foto1'] == 'on' && !empty($existing_photos['foto1'])) {
    // Hapus foto1 tanpa menggantinya dengan yang baru jika checkbox dicentang
    unlink('../foto/' . $existing_photos['foto1']);
    $foto1 = null;
}

// Lakukan hal yang sama untuk foto2
if (!empty($_FILES['foto2']['name'])) {
    if (!empty($_POST['hapus_foto2']) && $_POST['hapus_foto2'] == 'on' && !empty($existing_photos['foto2'])) {
        unlink('../foto/' . $existing_photos['foto2']);
        $foto2 = null;
    } else {
        $foto2  = $_FILES['foto2']['name'];
        $file_tmp2 = $_FILES['foto2']['tmp_name'];
        move_uploaded_file($file_tmp2, '../foto/' . $foto2);
    }
} elseif (!empty($_POST['hapus_foto2']) && $_POST['hapus_foto2'] == 'on' && !empty($existing_photos['foto2'])) {
    // Hapus foto2 tanpa menggantinya dengan yang baru jika checkbox dicentang
    unlink('../foto/' . $existing_photos['foto2']);
    $foto2 = null;
}

$query = $koneksi->prepare("UPDATE tb_seragam SET nama_seragam=?, foto1=?, foto2=?, id_customer=?, id_job=?, jumlah=?, bahan=?, logo=?, scotlight=?, warna=? WHERE id_seragam=?");
$query->bind_param("sssiiissssi", $nama, $foto1, $foto2, $customer, $job, $jumlah, $bahan, $logo, $scotlight, $warna, $id);
$query->execute();
$query->close();

header('Location: ../index.php?page=data-seragam');
?>
