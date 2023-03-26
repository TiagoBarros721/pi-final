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

function parseContent($content, $styling=null, $btn="Clica-me :D"){

    switch($content["tipo"]) {

        case 0:

            ?>
            <div class="style0">
            <?php

            echo "<div>";
            $class = isset($styling["header"]) ? "class='".$styling["header"]."'" : "";
            echo "<h2 $class>".$content["cabecalho"]."</h2>";

            $class = isset($styling["content"]) ? "class='".$styling["content"]."'" : "";
            echo "<p $class> ".$content["conteudo"]."</p>";
            
            $class = isset($styling["link"]) ? "class='".$styling["link"]."'" : "";
            echo "<a href='".$content["link"]."' $class>$btn</a>";
            echo "</div>";
            $class = isset($styling["image"]) ? "class='".$styling["image"]."'" : "";
            echo "<img $class src='admin/uploads/".$content["img"]." />";

            ?>
            </div>
            <?php

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
        case 2:

            ?>
            <div class="style2">    
            <?php

            $contents = explode("<", $content["conteudo"]);
            $class = isset($styling["contents"]) ? "class='".$styling["contents"]."'" : "";

            $counter = 1;
            $cc = 0;
            echo "<div>";
            foreach($contents as $c)
            {
                if($counter % 2 == 0){
                    
                    $class = isset($styling["sections"][$cc]) ? "class='".$styling["sections"][$cc]."'" : "";
                    $cc++;
                    echo "</div><div $class>";
                }
                
                if(strpos($c, "h2>") != -1) $class = isset($styling["header"]) ? "class='".$styling["header"]."'" : "";else{
                    $class = isset($styling["contents"][$cc]) ? "class='".$styling["contents"]."'" : "";
                }

                echo "<span $class>".($counter == 1 ? "" : "<") . $c . "</span>";
                
                $counter++;
            }
            echo "</div>"

            ?>
            </div>
            <?php
        break;
        case 3:

        ?>
        <div class="style3">    
        <?php   
            
            $contents = explode("<", $content["conteudo"]);
            $class = isset($styling["contents"]) ? "class='".$styling["contents"]."'" : "";

            $counter = 1;
            $cc = 0;
            echo "<div>";
            foreach($contents as $c)
            {
                if($counter % 2 == 0 && $counter != 2){
                    
                    $class = isset($styling["sections"][$cc]) ? "class='".$styling["sections"][$cc]."'" : "";
                    $cc++;
                    echo "</div><div $class>";
                    
                }
                
                if(strpos($c, "h2>") != -1) $class = isset($styling["header"]) ? "class='".$styling["header"]."'" : "";else{
                    $class = isset($styling["contents"][$cc]) ? "class='".$styling["contents"]."'" : "";
                }

                echo "<span class=\"u-container-layout u-valign-top\">".($counter == 1 ? "" : "<") . $c . "</span>";
                
                $counter++;
            }
            echo "</div>"
        ?>
        </div>
        <?php

        break;
    }
}

?>