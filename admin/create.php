<?php

include_once "includes/config.inc.php";

$username = $_POST['name'];
$password = encrypt($_POST['password']);
$email = $_POST['email'];

$sql = "INSERT INTO login (name, username, pass, ativo) VALUES ('".$username."', '" . $email . "', '" . $password . "', 1)";
my_query($sql);

header("location: page-login.html");
?>