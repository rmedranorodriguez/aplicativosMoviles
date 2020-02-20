<?php

require_once "conexion.php";

class IngresoModels{

	public function ingresoModel($datosModel, $tabla){

		$stmt = Conexion::conectar()->prepare("SELECT id, usuario, password, role, mail FROM $tabla WHERE usuario = :usuario");

		$stmt -> bindParam(":usuario", $datosModel["usuario"], PDO::PARAM_STR);
		
		$stmt -> execute();

		return $stmt -> fetch();

		$stmt -> close();

	}



}