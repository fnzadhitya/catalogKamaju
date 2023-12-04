<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <!-- /.card -->

        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Data MP</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-lg">
              Tambah Data
            </button>
            <br></br>
            <table id="example1" class="table table-bordered table-striped">
              <thead>
              <tr>
                <th>NO</th>
                <th>FOTO DPN</th>
                <th>FOTO BKG</th>
                <th>CUSTOMER</th>
                <th>JOB</th>
                <th>JUMLAH</th>
                <th>BAHAN</th>
                <th>LOGO</th>
                <th>SCOTLIGHT</th>
                <th>WARNA</th>
                <th>ACTION</th>
              </tr>
              </thead>
              <tbody>
                <?php
                $id = 0;
                $query = mysqli_query($koneksi, "SELECT * FROM tb_seragam
                  INNER JOIN tb_customer ON tb_seragam.id_customer=tb_customer.id_customer
                  INNER JOIN tb_job ON tb_seragam.id_job=tb_job.id_job");
                while($ctg = mysqli_fetch_array($query)){
                  $id++
                ?>
              <tr>
                <td><?php echo $id; ?></td>
                <td><?php echo $ctg['foto1']; ?></td>
                <td><?php echo $ctg['foto2']; ?></td>
                <td><?php echo $ctg['nama_customer']; ?></td>
                <td><?php echo $ctg['nama_job']; ?></td>
                <td><?php echo $ctg['jumlah']; ?></td>
                <td><?php echo $ctg['bahan']; ?></td>
                <td><?php echo $ctg['logo']; ?></td>
                <td><?php echo $ctg['scotlight']; ?></td>
                <td><?php echo $ctg['warna']; ?></td>
                <td>
                  <a href="index.php?page=edit-data-mp&&id=<?php echo $ctg['id_seragam']; ?>" class="btn btn-sm btn-warning">Edit</a>
                  <a onclick="hapus_data(<?php echo $ctg['id_seragam']; ?>)" class="btn btn-sm btn-danger">Hapus</a>
                </td>
                
              </tr>
              <?php } ?>
              </tbody>
            </table>
            </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container-fluid -->
</section>

<!-- Tambah Data -->
<div class="modal fade" id="modal-lg">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Tambah Data</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form method="get" action="add/tambah_data_mp.php">
            <div class="modal-body">
              <div class="form-group">
                <label for="inputNama">NRP</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="Masukkan NRP" name="nrp" required>
              </div>
              <div class="form-group">
                <label for="inputNama">Nama</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="Masukkan Nama" name="nama" required>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputState">Customer</label>
                  <select id="inputState" class="form-control" name="customer">
                    <option selected>Pilih Customer</option>
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
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputState">Area</label>
                  <select id="inputState" class="form-control" name="area">
                    <option selected>Pilih Area</option>
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
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
              <button type="submit" class="btn btn-primary">Simpan</button>
            </div>
          </div>
        </form>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!-- modal view data -->

<script>
  function hapus_data(data_id){
    //alert('ok');
    // window.location=("delete/hapus_data.php?id=+data_id")
    Swal.fire({
      title: 'Apakah kamu yakin ingin menghapus data?',
      // showDenyButton: true,
      showCancelButton: true,
      confirmButtonText: 'Hapus Data',
      // denyButtonText: `Don't save`,
    }).then((result) => {
      /* Read more about isConfirmed, isDenied below */
      if (result.isConfirmed) {
        window.location=("delete/hapus_data_mp.php?id="+data_id)
      } 
    })
  }
</script> 