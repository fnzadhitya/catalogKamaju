<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: *");

$conn = new mysqli("localhost", "root", "", "db_catalog");

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

$resultJobs = $conn->query("SELECT * FROM tb_job");
$dataJobs = array();
while ($row = $resultJobs->fetch_assoc()) {
    $dataJobs[] = $row;
}

if (!$resultJobs) {
    die("Error executing query: " . $conn->error);
}

$conn->close();

echo json_encode($dataJobs);
?>
