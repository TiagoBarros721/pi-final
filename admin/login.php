<?php 
session_start();

include_once("includes/config.inc.php");

$email = $_POST["email"];
$pass = $_POST["pass"];

$login = my_query("SELECT * FROM login WHERE username = '$email'");
if(count($login) > 0){

	//pr($login[0]);
	if(password_verify($pass, $login[0]["pass"])){

		//Define
		$_SESSION["login"] = $login[0];
		header("location: index.php");
	}else {

		echo("palavra passe errada");
	}
}else {

	echo("Utilizador não existe");
}

?>
