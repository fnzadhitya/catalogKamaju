<?php
$id		= $_GET['id'];
$query 	= mysqli_query($koneksi,"SELECT * FROM tb_seragam
  INNER JOIN tb_customer ON tb_seragam.id_customer=tb_customer.id_customer
  INNER JOIN tb_job ON tb_seragam.id_job=tb_job.id_job
  WHERE id_seragam='$id'");
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
            <form method='post' action='update/update_data_seragam.php' enctype="multipart/form-data">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Customer</label>
                            <select id="inputState" class="form-control" name="customer">
                                <option value="<?php echo $view['id_customer'];?>" selected><?php echo $view['nama_customer'];?></option>
                                <?php
                                include "../../conf/config.php";
                                $query = mysqli_query($koneksi,"SELECT * FROM tb_customer") or die (mysqli_error($koneksi));
                                while($data = mysqli_fetch_array($query)){
                                echo "<option value=$data[id_customer]> $data[nama_customer] </option>";
                                }
                                ?>
                            </select>
                            <input type="text" class="form-control" name="id" placeholder="Masukkan ID" value="<?php echo $view['id_seragam'];?>" hidden>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Job</label>
                            <select id="inputState" class="form-control" name="job">
                                <option value="<?php echo $view['id_job'];?>" selected><?php echo $view['nama_job'];?></option>
                                <?php
                                include "../../conf/config.php";
                                $query = mysqli_query($koneksi,"SELECT * FROM tb_job") or die (mysqli_error($koneksi));
                                while($data = mysqli_fetch_array($query)){
                                echo "<option value=$data[id_job]> $data[nama_job] </option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Nama</label>
                            <input type="text" class="form-control" name="nama" placeholder="Masukkan Nama" value="<?php echo $view['nama_seragam'];?>">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Jumlah</label>
                            <input type="text" class="form-control" name="jumlah" placeholder="Masukkan Jumlah" value="<?php echo $view['jumlah'];?>">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Bahan</label>
                            <input type="text" class="form-control" name="bahan" placeholder="Masukkan Bahan" value="<?php echo $view['bahan'];?>">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Logo</label>
                            <input type="text" class="form-control" name="logo" placeholder="Masukkan Logo" value="<?php echo $view['logo'];?>">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Scotlight</label>
                            <input type="text" class="form-control" name="scotlight" placeholder="Masukkan Scotlight" value="<?php echo $view['scotlight'];?>">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Warna</label>
                            <input type="text" class="form-control" name="warna" placeholder="Masukkan Warna" value="<?php echo $view['warna'];?>">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Foto Depan</label>
                            <input type="file" class="form-control" name="foto1" placeholder="Foto..." >
                            <img src="foto/<?php echo $view['foto1']; ?>" width="120px">
                        </div>
                    </div>
                    <div class="col-sm-6">  
                        <div class="form-group">
                            <label>Foto Belakang</label>
                            <input type="file" class="form-control" name="foto2" placeholder="Foto..." >
                            <img src="foto/<?php echo $view['foto2']; ?>" width="120px">
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