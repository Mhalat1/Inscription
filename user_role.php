<?php

ob_start();
require_once 'config.php';
$sql = "SELECT user_id,role_id FROM user_role ";
$result = $conn->query($sql);
?>

<?php if ($result->num_rows > 0) : ?>
    <table>
        <tr>
            <th>ID</th>
            <th>role_name</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()) : ?>
            <tr>
                <td><?php echo $row['user_id'] ?> </td>
                <td><?= $row['role_id'] ?></td>
                <td>
                    <a href="delete_role.php?role_id=<?= $row['role_id'] ?>">🗑️</a>
            </td>
            <td>
                    <a href="add_role.php?role_id=<?= $row['role_id'] ?>"> Add Role </a>
            </td>
            </tr>
        <?php endwhile ?>
    </table>

<form action="action.php" method="post">
   <label>Votre nom :</label>
   <input name="nom" id="nom" type="text" />
   <label>Votre âge :</label>
   <input name="age" id="age" type="number" /></p>
   <button type="submit">Valider</button>
</form>




<?php else : ?>
    <p> pas de resultat </p>
<?php endif;

$content = ob_get_clean();
require 'layout.php';


