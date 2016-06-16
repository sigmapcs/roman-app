<?php
    include 'php/conexion.php';
    /* Ejecutar la sentencia SQL */
    $resultado = mysqli_query($mysqli, "SELECT id_law, law_name, law_file FROM laws");

    while ($fila = mysqli_fetch_assoc($resultado)) {
        echo "<iframe scr=\"./sdwA,leyes/" . $fila['law_file']. "\"></iframe>";
        //echo $fila['id_law'] . '  ' . $fila['law_name'] . ' ' . $fila['law_file'] . PHP_EOL . '<br/>';
    }