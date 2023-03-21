
<?php
include_once("includes/config.inc.php");
$table = $_GET["table"];

if(isset($_GET["create"])){

    $link = "confirmEdit.php?table=$table&create=1";
    echo "<form method=\"POST\" action=\"$link\" enctype=\"multipart/form-data\">";
    
    echo "<h1>Criando registo na tabela $table</h1>";    

    $i = 0;
    $headers = explode(".", $_GET["header"]);

    $res = my_query("DESCRIBE $table");

    foreach($res as $value){

        $type = substr($headers[$i], 0, 3);

        switch ($type){

            case "str":
                $type = "text";
                break;
            case "pwd":
                $type = "password";
                break;
            case "chk":
                $type = "checkbox";
                break;
            case "flt":
                $type = "number' step='0.1";
                break;
            case "num":
                $type = "number";
                break;
            case "img":
                $type = "file";
                break;
            case "dat":

                $type = "date";
                break;
        }

        echo $value["Field"] . ": ";
        echo "<input type='$type' name='".$value["Field"]."' id='".$value["Field"]."' />";
        echo "<br/>";

        $i++;
    }
    
    echo "<input type='submit'>";

    die;
}

$res = my_query($_GET["query"]);

$link = "confirmEdit.php?table=$table&ident=".$_GET["query"];
echo "<form method=\"POST\" action=\"$link\" enctype=\"multipart/form-data\">";

echo "<h1>EDITAR ".$_GET["nome"]." :DDDD</h1>";

$i = 0;
$headers = explode(".", $_GET["header"]);

foreach($res[0] as $key => $value){

    if($headers[$i][0] == "*" || $headers[$i][0] == "_") {$i++;continue;};
    
    $type = substr($headers[$i], 0, 3);
    $head = substr($headers[$i], 3);
    
    switch ($type){

        case "str":
            $type = "text";
            break;
        case "pwd":
            $type = "password";
            break;
        case "chk":
            $type = "checkbox";
            break;
        case "flt":
            $type = "number' step='0.1";
            break;
        case "num":
            $type = "number";
            break;
        case "img":
            $type = "file";
            break;
            case "dat":

                $type = "date";
                break;
    }

    echo $head . ": ";
    echo "<input type='$type' value='$value' name='$key' />";
    echo "<br/>";

    $i++;
}

echo "<input type='submit'>";

?>


</form>
