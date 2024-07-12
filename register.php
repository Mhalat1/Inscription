<?php ob_start();

require_once 'config.php';
if ($_SERVER["REQUEST_METHOD"] === 'POST') {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO users(username, email, password) VALUES (?,?,?)";
    $stmt = $conn->prepare($sql);
    if ($stmt) {

        $stmt->bind_param("sss", $username, $email, $password);
        if ($stmt->execute()) {
            header('location:index.php');
        } else {
            echo "Erreur : " . $sql . "<br>" . $conn->error;
        }
    } else {
        "erreur lors de la préparation de la requête" . $conn->error;
    }
}?>

<?php
$content = ob_get_clean();
include 'layout.php';