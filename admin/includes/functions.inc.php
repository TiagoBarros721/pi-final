<?php
function pr($arr) {
    echo '<pre>';
    print_r($arr);
    echo '</pre>';
}

function clean_name($string) {
    $string = str_replace(' ', '_', $string); // Replaces all spaces with hyphens.
    return preg_replace('/[^A-Za-z0-9\_.]/', '', $string); // Removes special chars.
}

function encrypt($value) {
    return password_hash($value, PASSWORD_DEFAULT); 
}

function parseContent($content, $styling, $btn="Clica-me :D"){

    switch($content["tipo"]) {

        case 0:


        break;
        case 1:

            ?>

            <div class="style1">
                
                <?php
            $class = isset($styling["image"]) ? "class='".$styling["image"]."'" : "";
            echo "<img $class src='admin/uploads/".$content["img"]."'></img>";
            echo "<div>";
            $class = isset($styling["header"]) ? "class='".$styling["header"]."'" : "";
            echo "<h2 $class>".$content["cabecalho"]."</h2>";

            $class = isset($styling["content"]) ? "class='".$styling["content"]."'" : "";
            echo "<p $class> ".$content["conteudo"]."</p>";
            
            $class = isset($styling["link"]) ? "class='".$styling["link"]."'" : "";
            echo "<a href='".$content["link"]."' $class>$btn</a>";
            echo "</div>";
            ?>

            </div>

            <?php
        break;
    }
}

?>