<?php

include_once "includes/config.inc.php";
include_once "includes/functions.db.php";

$table = $_GET["table"];

if(isset($_GET["create"])){

    $keys = array();
    $values = array();

    foreach ($_POST as $key => $value) {

        if($key[0] == "_"){
            $key = substr($key, 1);
            $value = encrypt($value);
        }
        array_push($keys, $key);

        if($value == "on") $value = 1;
        array_push($values, $value);
    }

    if(count($_FILES) > 0){

        $names = array();
        foreach($_FILES as $key => $file){
            
            array_push($names, $file["name"]);
            array_push($keys, $key);

            uploadPic($key);
        }

        $names = array_map(function ($i) { return $i == "" ? "NULL": $i; }, $names);
        $values = array_merge($values, $names);
    }

    $sql = "INSERT INTO $table (" . implode(",", $keys) . ") VALUES ('" . implode("','", $values) . "');";
    
    echo $sql;
    pr($_POST);
    my_query($sql);
    header("location: index.php?table=$table");
}

$conditions = array();
foreach ($_POST as $key => $value) {
    
    array_push($conditions, $key . " = '$value'");
}

pr($_FILES);
if(count($_FILES) > 0){

    $names = array();
    foreach($_FILES as $key => $file){
        
        if($file['name'] == "") array_push($conditions, $key . " = 'NULL'");
        else array_push($conditions, $key . " = '". $file['name'] ."'");
        uploadPic($key);
    }
}

$sql = "UPDATE $table SET " . implode(",",$conditions) ." " . substr($_GET["ident"], strpos($_GET["ident"], "WHERE"));

echo $sql;
my_query($sql);


header("location: index.php?table=$table");

?>
