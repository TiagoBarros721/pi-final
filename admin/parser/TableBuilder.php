<?php
include_once "JsonReader.php";

class TableBuilder{
    
    var $tableMetaData = null;
    var $tableHeaders = null;
    
    public function __construct($data){
        
        $this->tableMetaData = readJsonFile($data);
        if($this->tableMetaData == null) return;

        $this->tableHeaders = $this->tableMetaData->headers;
    }
    
    public function build(){
        
        if ($this->tableMetaData == null || $this->tableHeaders == null)
        return;
        
        $page = isset($_GET["page"]) ? $_GET["page"] * 20 : 0;

        $tableData = my_query("SELECT * FROM " . $this->tableMetaData->name . " LIMIT 20 OFFSET $page");
        $size = my_query("SELECT COUNT(*) FROM " . $this->tableMetaData->name);
        $size = $size[0]["COUNT(*)"];

        $table = $this->tableMetaData->name;
        $head = implode(".",  array_filter($this->tableHeaders, function($elem) {return strpos($elem, '*') !== -1; })); 

        echo "<h1>Tabela " . $this->tableMetaData->name . "</h1>";

        if($page != 0) echo "<a href='?table=$table&page=".(($page/20)-1)."'><- anterior</a> ";
        if($size - $page > 20) echo "<a href='?table=$table&page=".(($page/20)+1)."'>seguinte -></a>";

        echo "<br/>";
        
        echo "<a href='edit.php?table=$table&header=$head&create=1'>Criar novo registo</a><br/>";
        echo "<div class=\"table-responsive\"><table class=\"table table-xs mb-0\"><thead><tr>";

        if(count($tableData) <= 0 ) {

            echo "Tabela vazia";
            return;
        }

        $types = array();
        foreach ($this->tableHeaders as $key) {

            if(strpos($key, ':') !== false){

                $name = explode(":", $key)[1];
                $extension = explode(":", $key)[0];
                
                $name = str_replace("!", "", $name);
                
                array_push($types, $extension);
                echo "<th>$name</th>";

            }else{
                
                $key = str_replace("_", "", $key);
                $key = str_replace("*", "", $key);
                $key = str_replace("!", "", $key);
                echo "<th>".$key."</th>";
            } 
        }

        if(!isset($this->tableMetaData->editable) || $this->tableMetaData->editable) echo "<th>Editar</th><th>Apagar</th>";

        echo "<tr></thead><tbody>";

        foreach($tableData as $value) {
                                                       
            echo "<tr>";
            $index = 0;
            foreach ($value as $key => $v) {

                echo (substr($this->tableHeaders[$index], 0, 1) == "_") ? "<td >###</td>" : "<td class='fixedsize'>".$v."</td>";
                $index++;
            }

            $nome = $value[$this->tableMetaData->identifier];
            $query = "SELECT * FROM " . $this->tableMetaData->name . " WHERE " . $this->tableMetaData->identifier . " = " . $value[$this->tableMetaData->identifier] . "";

            
            $comment = isset($this->tableMetaData->comment) ? "comment=".$this->tableMetaData->comment."&" : "";
            if(!isset($this->tableMetaData->editable) || $this->tableMetaData->editable)    
            echo "<td><a href='edit.php?".$comment."table=$table&nome=$nome&header=$head&query=$query'>X</a></td><td><a href='delete.php?table=$table&nome=$nome&ident=".$this->tableMetaData->identifier."'>X</td>";
        }
        echo "</tbody></table></div>";
    }
}