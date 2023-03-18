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
?>