<!DOCTYPE html>
<html style="font-size: 16px;" lang="pt"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="At Home&nbsp;On All Roads, About Hermes, Ocean Freight, Logistics, Air Freight, Why Choose Us, Respectful, Independent, Personal, Sustainable, Service With a Smile, Land Delivery By Truck, Land Delivery By Train, Contact Us Now To Get Quote For All Your Global Shipping Needs, Staff Directory, We Are Hermes, Contact Us, INTUITIVE">
    <meta name="description" content="">
    <title>Página Inicial</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Página-Inicial.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.6.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700">
    <link rel="stylesheet" href="./prefabCss.css">
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Página Inicial">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body class="u-body u-xl-mode" data-lang="pt"><header class="u-clearfix u-header u-header" id="sec-7bf8"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1">
          <img src="./images/default-logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1">
            <?php 
                
                include_once("admin/includes/config.inc.php");
                drawMenu();
              
              ?>  
</li></ul>
          </div>
          <div class="u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>

              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-clearfix u-image u-shading u-section-1" id="carousel_562f">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-left u-container-style u-expanded-width-sm u-expanded-width-xs u-group u-group-1">
          <div class="u-container-layout u-valign-bottom-sm u-valign-bottom-xs u-valign-middle-md">
            <h1 class="u-custom-font u-font-oswald u-text u-title u-text-1">Trabalho PI<br>
            </h1>
            <h4 class="u-custom-font u-font-courier-new u-text u-text-2">sobre touhou ᗜˬᗜ</h4>
          </div>
        </div>
      </div>
    </section>
    
    <section class="u-clearfix u-grey-5 u-section-7" id="carousel_a4b5">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <h4>Parcerias 😎🤝😎</h4>
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">

              <?php
              
              include_once "admin/includes/config.inc.php";

              $res = my_query("SELECT * FROM parceria");
              foreach($res as $p){

                ?>

              <div class="u-align-center u-container-style u-expand-resize u-layout-cell u-left-cell u-size-10 u-size-30-md u-layout-cell-1">
                <div class="u-container-layout u-valign-middle u-container-layout-1" src="">

                <?php
                
                echo "<img class=\"u-expanded-width u-image u-image-contain u-image-1\" src=".("admin/uploads/".$p["img"]).">";
                echo $p["nome"];
                
                ?>

                </div>
              </div>

              <?php
              }

              ?>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section class="u-clearfix u-section-10" id="carousel_eb1d">
      <div class="u-clearfix u-sheet u-sheet-1">
        <?php
        
        echo "<h2 class=\"u-custom-font u-font-oswald u-text u-text-1\">Quem somos</h2>";
        include_once "admin/includes/config.inc.php";
        $res = my_query("SELECT * FROM conteudo WHERE pagina = 'index'");
        
        $style = array("header" => "u-custom-font u-font-courier-new u-text u-text-2", "content" => "u-text u-text-3", "link" => "u-btn u-button-style u-custom-font u-font-courier-new u-palette-1-base u-btn-1");
        parseContent($res[0], $style);

        ?>
      </div>
    </section>
  
</body></html>