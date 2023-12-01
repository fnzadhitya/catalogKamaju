<?php
$id		= $_GET['id'];
$query 	= mysqli_query($koneksi,"SELECT * FROM tb_users WHERE id='$id'");
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
            <form method='post' action='update/update_user.php' enctype="multipart/form-data">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Nama</label>
                            <input type="text" class="form-control" name="nama" placeholder="Masukkan Nama" value="<?php echo $view['nama'];?>">
                            <input type="text" class="form-control" name="id" placeholder="..." value="<?php echo $view['id'];?>" hidden>
                        </div>
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" class="form-control" name="username" placeholder="Masukkan Username" value="<?php echo $view['username'];?>">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="text" class="form-control" name="password" placeholder="Masukkan Password" value="<?php echo $view['password'];?>">
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