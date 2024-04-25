<?php
header('Content-Type: application/json; charset=UTF-8');

include ('../ShadrinaMM_Web2/Secret.php'); // Ensure the correct path to Secret.php
$user = 'userr'; // Replace with your actual username
$pass = 'passs'; // Replace with your actual password

try {
    $db = new PDO(
        "mysql:host=localhost;dbname=$user",
        $user,
        $pass,
        [PDO::ATTR_PERSISTENT => true, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );

    $query = "SELECT * FROM Realtors";
    $stmt = $db->query($query);
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($results);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
    die();
}
?>