<?php ob_start(); ?>
<h2>Inscription Utilisateur</h2>
<form action="register.php" method="post">
    Nom d'utilisateur: <input type="text" name="username"><br>
    Email: <input type="email" name="email"><br>
    Mot de passe: <input type="password" name="password"><br>
    <button type="submit" value="S'inscrire"> button </button>
</form>
<?php
$content = ob_get_clean();
include 'layout.php';