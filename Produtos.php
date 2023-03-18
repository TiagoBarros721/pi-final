<!DOCTYPE html>
<html style="font-size: 16px;" lang="pt"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Contato</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">

  <style>
        
    .prod-container {

      display: flex;
    }

    .produto {

      width: 350px;
      background-color: beige;
      padding: 20px;
      margin: 20px;
    }

    .produto > img {

      width: 300px;
      height: 300px;

      border-radius: 20px;
    }

    .produto > img.unactive {

      display: none
    }

    .produto > button {

      width: 100%;
    }

  </style>

  <script>

    function next(img1, img2, img3, id) {

      let images = [img1, img2, img3];
      
      let myImg = document.getElementById(id).src.substring(document.getElementById(id).src.lastIndexOf("/") + 1);
      let currentindex = images.indexOf(myImg) + 1;

      if(currentindex == -1 || images[currentindex] == "NULL") return;

      if(currentindex >= 3) currentindex = 0;
      document.getElementById(id).src = "admin/uploads/" + images[currentindex];
    }

  </script>

<link rel="stylesheet" href="Contato.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.6.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Contato">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body class="u-body u-xl-mode" data-lang="pt"><header class="u-clearfix u-header u-header" id="sec-7bf8"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1">
          <img src="images/default-logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <?php 
                
                include_once("admin/includes/config.inc.php");

                  drawMenu();
              ?> 
        </nav>
      </div></header>
    <section class="u-clearfix u-section-1" id="sec-1bc3">
      <div class="u-clearfix u-sheet u-sheet-1"></div>
    </section>

    <h1>Produtos</h1>
    <?php

        include_once("admin/includes/config.inc.php");

        $res = my_query("SELECT * FROM produtos");
        
        echo "<div class=\"prod-container\">";
        foreach($res as $prod){

          ?>

          <div class="produto">
            <h2>Nome: <?php echo $prod["nome"] ?></h2>
            <p class="desc">Descrição: <?php echo $prod["descricao"] ?></p>
            <img src=<?php echo "admin/uploads/".$prod["img1"] ?> alt="" id=<?php echo $prod["nome"] ?>>

            <button onclick=<?php 

                $arr = array($prod["img1"], $prod["img2"], $prod["img3"], $prod["nome"]);
                $text = "'" . implode("','", $arr) . "'";

                echo "next($text)"; 
              ?> 
              type="">Next</button>
            <p class="preco"><strong><?php echo $prod["preco"] ?> €</strong></p>

            <button>Efetuar compra</button>
          </div>

          <?php
        }
        echo "</div>";
        
    ?>

  
</body></html>