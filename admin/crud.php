<link rel="stylesheet" href="includes/crud.css">

<?php

	include_once("includes/config.inc.php");
	include_once("parser/TableBuilder.php");

	echo "<h1>Bem vindo :D " . $_SESSION["login"]["name"] . "</h1>";
	echo "<p>Funções CRUD, selecione uma tabela para editar</p>";
	
	$sql = "SHOW TABLES FROM 12itm25_login";
	$res = my_query($sql);
	
	echo "Selecione uma tabela: <br/><ul>";
	foreach ($res as $value) {

		$name = strval($value["Tables_in_12itm25_login"]);
		echo "<li><a href='?table=$name'>$name</a></li>";
	}

	echo "</ul>";

	if(isset($_GET["table"])){

		$tb = new TableBuilder($_GET["table"]);
		$tb->build();
	}
?>   
