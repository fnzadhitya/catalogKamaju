<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
  <li class="nav-item">
    <a href="index.php?page=users" id="users" class="nav-link">
      <i class="nav-icon fas fa-user"></i>
      <p>Users</p>
    </a>
  </li>
  <li class="nav-item menu-open">
    <a href="#" class="nav-link">
      <p>
        Catalog
        <i class="right fas fa-angle-left"></i>
      </p>
    </a>
    <ul class="nav nav-treeview">
      <li class="nav-item">
        <a href="index.php?page=data-seragam" id="data-seragam" class="nav-link">
          <i class="far fa-circle nav-icon"></i>
          <p>Data Seragam</p>
        </a>
      </li>
      <li class="nav-item">
        <a href="index.php?page=data-apd" id="data-apd" class="nav-link">
          <i class="far fa-circle nav-icon"></i>
          <p>Data APD</p>
        </a>
      </li>
      <li class="nav-item">
        <a href="index.php?page=data-customer" id="data-customer" class="nav-link">
          <i class="far fa-circle nav-icon"></i>
          <p>Data Customer</p>
        </a>
      </li>
      <li class="nav-item">
        <a href="index.php?page=data-job" id="data-job" class="nav-link">
          <i class="far fa-circle nav-icon"></i>
          <p>Data Job</p>
        </a>
      </li>
    </ul>
  </li>
  <li class="nav-item">
    <a href="logout.php" id="logout" class="nav-link text-red">
      <i class="nav-icon fas fa-power-off"></i>
      <p>Log out</p>
    </a>
  </li>
</ul>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    // Ambil nama halaman dari parameter 'page' di URL
    var currentPage = '<?php echo isset($_GET["page"]) ? $_GET["page"] : ""; ?>';

    // Temukan elemen dengan ID sesuai dengan halaman yang sedang aktif
    var activeElement = document.getElementById(currentPage);

    // Tandai elemen sebagai aktif jika ditemukan
    if (activeElement) {
      activeElement.classList.add("active");
    }
  });
</script>
