<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    test 11-06-2025 v2
    <?php
    include "./include/connectdb.php";

    $stmt = $pdo->query("SELECT * FROM artists WHERE id = 1");
    while ($row = $stmt->fetch()) {
        echo $row['name'] . "<br />\n" . $row['description'];
    }


    ?>
</body>

</html>