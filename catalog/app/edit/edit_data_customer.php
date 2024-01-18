<?php
$id		= $_GET['id'];
$query 	= mysqli_query($koneksi,"SELECT * FROM tb_customer WHERE id_customer='$id'");
$view	= mysqli_fetch_array($query);
?>

<section class="content">
	<div class="container-fluid">
		<div class="card card-warning">
            <div class="card-header">
                <h3 class="card-title">Edit data</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
            <form method='post' action='update/update_data_customer.php' enctype="multipart/form-data">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Nama Customer</label>
                            <input type="text" class="form-control" name="nama" placeholder="Masukkan Nama" value="<?php echo $view['nama_customer'];?>">
                            <input type="text" class="form-control" name="id" placeholder="..." value="<?php echo $view['id_customer'];?>" hidden>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Foto</label>
                            <input type="file" class="form-control" name="foto" placeholder="Foto..." >
                            <img src="foto/<?php echo $view['logo_customer']; ?>" width=120px">
                            <br>
                            <input type="checkbox" name="hapus_foto"> Hapus Foto
                        </div>
                    </div>
                </div>
                <div class="row">
                    <button type="submit" class="btn btn-sm btn-info">Simpan</button>
                </div>
            </form>
            </div>
            <!-- /.card-body -->
        </div>
	</div>
</section>