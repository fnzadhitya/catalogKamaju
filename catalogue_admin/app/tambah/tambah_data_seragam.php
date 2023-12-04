<section class="content">
	<div class="container-fluid">
		<div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Tambah data</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
            <form method='post' action='add/add_data_seragam.php' enctype="multipart/form-data">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Customer</label>
                            <select id="inputState" class="form-control" name="customer">
                                <option selected> -- Pilih Customer -- </option>
                                <?php
                                include "../../conf/config.php";
                                $query = mysqli_query($koneksi,"SELECT * FROM tb_customer") or die (mysqli_error($koneksi));
                                while($data = mysqli_fetch_array($query)){
                                echo "<option value=$data[id_customer]> $data[nama_customer] </option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Job</label>
                            <select id="inputState" class="form-control" name="job">
                                <option selected> -- Pilih Job -- </option>
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
                            <input type="text" class="form-control" name="nama" placeholder="Masukkan Nama">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Jumlah</label>
                            <input type="text" class="form-control" name="jumlah" placeholder="Masukkan Jumlah">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Bahan</label>
                            <input type="text" class="form-control" name="bahan" placeholder="Masukkan Bahan">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Logo</label>
                            <input type="text" class="form-control" name="logo" placeholder="Masukkan Logo">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Scotlight</label>
                            <input type="text" class="form-control" name="scotlight" placeholder="Masukkan Scotlight">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Warna</label>
                            <input type="text" class="form-control" name="warna" placeholder="Masukkan Warna">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Foto Depan</label>
                            <input type="file" class="form-control" name="foto1" placeholder="Foto...">
                        </div>
                    </div>
                    <div class="col-sm-6">  
                        <div class="form-group">
                            <label>Foto Belakang</label>
                            <input type="file" class="form-control" name="foto2" placeholder="Foto...">
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