<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <!-- /.card -->

        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Data APD</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <a href="index.php?page=tambah-data-apd">
              <button type="button" class="btn btn-info" data-toggle="modal">
              Tambah Data
              </button>
            </a>
            <br></br>
            <table id="example1" class="table table-bordered table-striped">
              <thead>
              <tr>
                <th>NO</th>
                <th>NAMA</th>
                <th>FOTO</th>
                <th>CUSTOMER</th>
                <th>JOB</th>
                <th>JUMLAH</th>
                <th>TYPE</th>
                <th>MERK</th>
                <th>WARNA</th>
                <th>ACTION</th>
              </tr>
              </thead>
              <tbody>
                <?php
                $id = 0;
                $query = mysqli_query($koneksi, "SELECT * FROM tb_apd
                  INNER JOIN tb_customer ON tb_apd.id_customer=tb_customer.id_customer
                  INNER JOIN tb_job ON tb_apd.id_job=tb_job.id_job");
                while($ctg = mysqli_fetch_array($query)){
                  $id++
                ?>
              <tr>
                <td><?php echo $id; ?></td>
                <td><?php echo $ctg['nama_apd']; ?></td>
                <td>
                  <img src="foto/<?php echo $ctg['foto']; ?>" width="100px">
                </td>
                <td><?php echo $ctg['nama_customer']; ?></td>
                <td><?php echo $ctg['nama_job']; ?></td>
                <td><?php echo $ctg['jumlah']; ?></td>
                <td><?php echo $ctg['type']; ?></td>
                <td><?php echo $ctg['merk']; ?></td>
                <td><?php echo $ctg['warna']; ?></td>
                <td>
                  <a href="index.php?page=edit-data-apd&&id=<?php echo $ctg['id_apd']; ?>" class="btn btn-sm btn-warning">Edit</a>
                  <a onclick="hapus_data(<?php echo $ctg['id_apd']; ?>)" class="btn btn-sm btn-danger">Hapus</a>
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
        window.location=("delete/hapus_data_apd.php?id="+data_id)
      } 
    })
  }
</script> 