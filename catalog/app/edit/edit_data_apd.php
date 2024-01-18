<?php
$id		= $_GET['id'];
$query 	= mysqli_query($koneksi,"SELECT * FROM tb_apd
  INNER JOIN tb_customer ON tb_apd.id_customer=tb_customer.id_customer
  INNER JOIN tb_job ON tb_apd.id_job=tb_job.id_job
  WHERE id_apd='$id'");
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
            <form method='post' action='update/update_data_apd.php' enctype="multipart/form-data">
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
                            <input type="text" class="form-control" name="id" placeholder="Masukkan ID" value="<?php echo $view['id_apd'];?>" hidden>
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
                            <input type="text" class="form-control" name="nama" placeholder="Masukkan Nama" value="<?php echo $view['nama_apd'];?>">
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
                            <label>Type</label>
                            <input type="text" class="form-control" name="type" placeholder="Masukkan Type" value="<?php echo $view['type'];?>">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Merk</label>
                            <input type="text" class="form-control" name="merk" placeholder="Masukkan Merk" value="<?php echo $view['merk'];?>">
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
                            <label>Foto</label>
                            <input type="file" class="form-control" name="foto" placeholder="Foto..." >
                            <img src="foto/<?php echo $view['foto']; ?>" width=120px">
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