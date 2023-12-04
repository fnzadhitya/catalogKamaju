<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <!-- /.card -->

        <div class="card">
          <div class="card-header">
            <h3 class="card-title">User</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <a href="index.php?page=tambah-user">
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
                <th>USERNAME</th>
                <th>PASSWORD</th>
                <th>ACTION</th>
              </tr>
              </thead>
              <tbody>
                <?php
                $id = 0;
                $query = mysqli_query($koneksi, "SELECT * FROM tb_users");
                while($ctg = mysqli_fetch_array($query)){
                  $id++
                ?>
              <tr>
                <td><?php echo $id; ?></td>
                <td><?php echo $ctg['nama']; ?></td>
                <td><?php echo $ctg['username']; ?></td>
                <td><?php echo $ctg['password']; ?></td>
                <td>
                  <a href="index.php?page=edit-user&&id=<?php echo $ctg['id']; ?>" class="btn btn-sm btn-warning">Edit</a>
                  <a onclick="hapus_data(<?php echo $ctg['id']; ?>)" class="btn btn-sm btn-danger">Hapus</a>
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
        window.location=("delete/hapus_user.php?id="+data_id)
      } 
    })
  }
</script> 