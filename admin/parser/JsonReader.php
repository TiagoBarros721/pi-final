<?php

function readJsonFile($name) {

    try {
        
        $json = file_get_contents("parser/".$name.'.json');
        $data = json_decode($json);
    
        return $data;
    
    } catch (\Throwable $th) {
        
        return null;
    }
}