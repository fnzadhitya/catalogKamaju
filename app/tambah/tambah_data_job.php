<section class="content">
	<div class="container-fluid">
		<div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Tambah data</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
            <form method='post' action='add/add_data_job.php' enctype="multipart/form-data">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Nama Job</label>
                            <input type="text" class="form-control" name="nama" placeholder="Masukkan Nama">
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