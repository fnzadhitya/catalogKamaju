<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: *");

$conn = new mysqli("localhost", "root", "", "db_catalog");

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

$resultCustomers = $conn->query("SELECT * FROM tb_customer");
$dataCustomers = array();
while ($row = $resultCustomers->fetch_assoc()) {
    $dataCustomers[] = $row;
}

if (!$resultCustomers) {
    die("Error executing query: " . $conn->error);
}

$conn->close();

echo json_encode($dataCustomers);
?>
