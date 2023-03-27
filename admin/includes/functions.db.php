<?php

function addLog(){

    $logDate = date('Y-m-d');
    $logTime = date('H:i:s');
    $serverip = $_SERVER["REMOTE_ADDR"];
    $logSession = session_id();
    $url = "http://" . $_SERVER["HTTP_HOST"] . $_SERVER['REQUEST_URI'];

    $sql = "INSERT INTO logs(data, hora, IP, session, url) VALUES ('$logDate', '$logTime', '$serverip', '$logSession', '$url')";
    my_query($sql);
}

function drawMenu(){

    $res = my_query("SELECT * FROM menu WHERE ativo = '1'");

    foreach ($res as $key => $value) {
  
      $link = str_replace(" ", "-", $value["nome"]) . ".php";
      if ($link == "Página-inicial-:).php") $link = "index.php";
      if ($link == "BackOffice.php") $link = "admin/index.php";
      echo "<li class=\"u-nav-item\"><a class=\"u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base\" href=\"$link\" style=\"padding: 10px 20px;\">".$value["nome"]."</a>";
    }

}

function uploadPic($key) {

  $target_dir = "uploads/";
  $target_file = $target_dir . basename($_FILES[$key]["name"]);
  $uploadOk = 1;
  $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

  // Check if image file is a actual image or fake image
  if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES[$key]["tmp_name"]);
    if($check !== false) {
      echo "File is an image - " . $check["mime"] . ".";
      $uploadOk = 1;
    } else {
      echo "File is not an image.";
      $uploadOk = 0;
    }
  }

  // Check if file already exists
  if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
  }

  // Check if $uploadOk is set to 0 by an error
  if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
  // if everything is ok, try to upload file
  } else {
    if (move_uploaded_file($_FILES[$key]["tmp_name"], $target_file)) {
      echo "The file ". htmlspecialchars( basename( $_FILES[$key]["name"])). " has been uploaded.";
    } else {
      echo "Sorry, there was an error uploading your file.";
    }
  }
}
?>