<?php
require_once 'config.php';
if ($_SERVER["REQUEST_METHOD"] === 'POST') {
    $id = $_POST['id'];
    $username = $_POST['username'];
    $email = $_POST['email'];

    $sql = "UPDATE users SET username=?, email=? WHERE id=?";
    $stmt = $conn->prepare($sql);
    if ($stmt) {
        $stmt->bind_param("sss", $username, $email, $id);
        if ($stmt->execute()) {
            header('location:index.php');
        } else {
            echo "Erreur : " . $sql . "<br>" . $stmt->error;
        }
    } else {
        echo "erreur lors de la préparation de la requête" . $conn->error;
    }
}
