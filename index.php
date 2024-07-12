<?php

ob_start();
require_once 'config.php';
$sql = "SELECT id,username,email,password FROM users";
$result = $conn->query($sql);
?>

<?php if ($result->num_rows > 0) : ?>
    <table>
        <tr>
            <th>ID</th>
            <th>Nom d'utilisateur</th>
            <th>Email</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()) : ?>
            <tr>
                <td><?php echo $row['id'] ?> </td>
                <td>
                    <a href="form_update.php?id=<?= $row['id'] ?>">
                        <?= $row['username'] ?>
                    </a>
                </td>
                <td><?= $row['email'] ?></td>
                <td><?= $row['password'] ?></td>
                <td>
                    <a href="delete.php?id=<?= $row['id'] ?>">🗑️</a>
                </td>
            </tr>
        <?php endwhile ?>
    </table>
<?php else : ?>
    <p> pas de resultat </p>
<?php endif;

$content = ob_get_clean();
require 'layout.php';
