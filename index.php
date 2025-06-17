<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>


<body>
    
    <?php
    include "./include/connectdb.php";

    $stmt = $pdo->query("SELECT id, name FROM artists");
    while ($row = $stmt->fetch()) {
        // echo $row['name'] . "<br />\n";
        
        ?>
        <a href="artist.php?id=<?php echo $row['id'];  ?>"><?php echo $row['name']; ?></a>
        <?php

        echo "<br><br>";
    }


    ?>
</body>

</html>