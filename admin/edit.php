
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

        $required = "";

        if($headers[$i][strlen($headers[$i])-1] == "!"){
    
            $headers[$i] = str_replace("!", "", $headers[$i]);
            $required = "required";
        }

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
            default:
                if($type[0] == "{"){

                    if(strpos($headers[$i], "-") !== false){

                        $txt = substr($headers[$i], 1, strpos($headers[$i], ":")-2);
                        $table = explode("-", $txt)[0];
                        $campo = explode("-", $txt)[1];

                        $sql = "SELECT $campo FROM $table";
                        $res = my_query($sql);
                        
                        $data = array();
                        foreach($res as $field) array_push($data, "<option>".$field[$campo]."</option>");

                        echo $value["Field"] . ": ";
                        echo "<select $required name='". ($type[0] == "_" ? "_" : "") .$value["Field"]."' id='".$value["Field"]."'>".
                        implode("", $data) ."</select>";
                        echo "<br/>";
                        $i++;
                        continue 2;
                    }

                    $options = explode(",", substr($headers[$i], 1, strpos($headers[$i], ":")-2));

                    echo $value["Field"] . ": ";
                    echo "<select $required name='". ($type[0] == "_" ? "_" : "") .$value["Field"]."' id='".$value["Field"]."'>".
                    implode("",array_map(function($o){return "<option>$o</option>";}, $options)) ."</select>";
                    echo "<br/>";
                    $i++;
                    continue 2;
                }
        }

        echo $value["Field"] . ": ";
        echo "<input $required type='$type' name='". ($type[0] == "_" ? "_" : "") .$value["Field"]."' id='".$value["Field"]."' />";
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
    $required = "";

    if($headers[$i][strlen($headers[$i])-1] == "!"){

        $headers[$i] = str_replace("!", "", $headers[$i]);
        $required = "required";
    }

    $type = substr($headers[$i], 0, 3);
    $head = substr($headers[$i], 4);
    
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
        default:
        if($type[0] == "{"){

            if(strpos($headers[$i], "-") !== false){

                $txt = substr($headers[$i], 1, strpos($headers[$i], ":")-2);
                $table = explode("-", $txt)[0];
                $campo = explode("-", $txt)[1];

                $sql = "SELECT $campo FROM $table";
                $r = my_query($sql);
                
                $data = array();
                foreach($r as $f) {

                    $selected = "";
                    if($value == $f[$campo]) $selected = "selected";
                    array_push($data, "<option $selected>".$f[$campo]."</option>");
                }

                echo substr($head, strpos($head, "}") + 2) . ": ";
                echo "<select $required name='$key'>".
                implode("", $data) ."</select>";
                echo "<br/>";
                $i++;
                continue 2;
            }

            $options = explode(",", substr($headers[$i], 1, strpos($headers[$i], ":")-2));

            echo substr($head, strpos($head, "}") + 2) . ": ";
            $data = array();
            foreach($options as $f) {

                $selected = "";
                if($value == $f) $selected = "selected";
                array_push($data, "<option $selected>".$f."</option>");
            }

            echo "<select $required name='$key'>".
            implode("",$data) ."</select>";
            echo "<br/>";
            $i++;
            continue 2;
        }
    }

    echo $head . ": ";
    echo "<input $required type='$type' value='$value' name='$key' />";
    echo "<br/>";

    $i++;
}

if(isset($_GET["comment"])){

    echo "<br>Comentário: <strong>";
    echo $_GET["comment"];
    echo "</strong><br>";
}
echo "<input type='submit'>";

?>


</form>
