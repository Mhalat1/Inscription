<?php
require_once 'config.php';
$id = $_GET['id'];
$sql = "DELETE FROM users WHERE id=$id";
$result = $conn->query($sql);
if ($result) {
    // echo "Utilisateur supprimé avec succès.";
    header('location:index.php');
} else {
    echo "Erreur : " . $sql . "<br>" . $conn->error;
}