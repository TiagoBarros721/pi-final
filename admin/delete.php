<?php

	include_once "includes/config.inc.php";
	
	//$_SESSION["login"]["nome"]

	$sql = "DELETE FROM ".$_GET["table"]." WHERE ".$_GET["ident"]." = '".$_GET["nome"]."'";
	my_query($sql);
	header("location: crud.php?table=".$_GET["table"]);
?>
