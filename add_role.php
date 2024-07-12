<?php
require_once 'config.php';
$role_id = $_GET['role_id'];
$sql = "INSERT INTO user_role (user_id,role_id )
VALUES (10, 4)";
$result = $conn->query($sql);
if ($result) {
    // echo "Utilisateur supprimé avec succès.";
    header('location:user_role.php');
} else {
    echo "Erreur : " . $sql . "<br>" . $conn->error;
}