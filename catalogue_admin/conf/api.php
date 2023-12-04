<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");

$conn = new mysqli("localhost", "root", "", "db_catalog");

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

$resultSeragam = $conn->query("SELECT * FROM tb_seragam");
$dataSeragam = array();
while ($row = $resultSeragam->fetch_assoc()) {
    $dataSeragam[] = $row;
}

$resultAPD = $conn->query("SELECT * FROM tb_apd");
$dataAPD = array();
while ($row = $resultAPD->fetch_assoc()) {
    $dataAPD[] = $row;
}

$customerId = $_GET['customer_id'];
$jobId = $_GET['job_id'];

// Filter data seragam
$filteredSeragam = array_filter($dataSeragam, function ($item) use ($customerId, $jobId) {
    return $item['id_customer'] == $customerId && $item['id_job'] == $jobId;
});

// Filter data APD
$filteredAPD = array_filter($dataAPD, function ($item) use ($customerId, $jobId) {
    return $item['id_customer'] == $customerId && $item['id_job'] == $jobId;
});

// Tutup koneksi database
$conn->close();

echo json_encode(['seragam' => array_values($filteredSeragam), 'apd' => array_values($filteredAPD)]);
?>
