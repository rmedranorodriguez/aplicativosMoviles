<?php
function conectar()
{
    $servidor = "localhost";
    $usuario  = "root";
    $password = "";
    $bd       = "tienda_curso";
    $cnn      = new mysqli($servidor, $usuario, $password, $bd);
    return $cnn;
}
