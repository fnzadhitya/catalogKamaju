<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: *");

$conn = new mysqli("localhost", "root", "", "db_catalog");

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

$customerId = isset($_GET['customer_id']) ? $_GET['customer_id'] : null;
$jobId = isset($_GET['job_id']) ? $_GET['job_id'] : null;

if ($customerId === null || $jobId === null) {
    die("Parameter customer_id atau job_id tidak valid");
}

// Query untuk seragam
$stmtSeragam = $conn->prepare("SELECT * FROM tb_seragam WHERE id_customer = ? AND id_job = ?");
$stmtSeragam->bind_param("ii", $customerId, $jobId);
$stmtSeragam->execute();
$resultSeragam = $stmtSeragam->get_result();
$dataSeragam = $resultSeragam->fetch_all(MYSQLI_ASSOC);
$stmtSeragam->close();

if (!$resultSeragam) {
    die("Error executing query for seragam: " . $conn->error);
} 

// Query untuk APD
$stmtAPD = $conn->prepare("SELECT * FROM tb_apd WHERE id_customer = ? AND id_job = ?");
$stmtAPD->bind_param("ii", $customerId, $jobId);
$stmtAPD->execute();
$resultAPD = $stmtAPD->get_result();
$dataAPD = $resultAPD->fetch_all(MYSQLI_ASSOC);
$stmtAPD->close();

if (!$resultAPD) {
    die("Error executing query for APD: " . $conn->error);
}

$conn->close();

echo json_encode(['seragam' => $dataSeragam, 'apd' => $dataAPD]);
?>
