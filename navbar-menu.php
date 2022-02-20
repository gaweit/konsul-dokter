 

<ul class="nav navbar-nav navbar-right">
<?php   
// fungsi untuk pengecekan menu aktif
// jika menu home dipilih, menu home aktif
if ($_GET["page"]=="home") { ?>
	<li class="active">
	    <a href="home"> Home </a>
	</li>
<?php
}
// jika tidak, menu home tidak aktif
else { ?>
	<li>
        <a href="home"> Home </a>
    </li>
<?php
} 


// jika menu service dipilih, menu service aktif
if ($_GET["page"]=="service") { ?>
  <li class="active">
        <a href="service"> Layanan </a>
    </li>
<?php
}
// jika tidak, menu service tidak aktif
else { ?>
  <li>
        <a href="service"> Layanan </a>
    </li>
<?php
}

// jika menu dm dipilih, menu dm aktif
if ($_GET["page"]=="dm") { ?>
  <li class="active">
      <a href="dm"> Definisi DM </a>
  </li>
<?php
}
// jika tidak, menu DM tidak aktif
else { ?>
  <li>
        <a href="dm"> Definisi DM </a>
    </li>
<?php
}

// jika menu etiologi dipilih, menu etiologi aktif
if ($_GET["page"]=="etiologi") { ?>
  <li class="active">
        <a href="etiologi">  Etiologi DM </a>
    </li>
<?php
}
// jika tidak, menu etiologi tidak aktif
else { ?>
  <li>
        <a href="etiologi"> Etiologi DM </a>
    </li>
<?php
}   


// jika menu resiko dipilih, menu resiko aktif
if ($_GET["page"]=="resiko") { ?>
  <li class="active">
        <a href="resiko">  Faktor Resiko DM </a>
    </li>
<?php
}
// jika tidak, menu resiko tidak aktif
else { ?>
  <li>
        <a href="resiko"> Faktor Resiko DM </a>
    </li>
<?php
}   


// jika menu portfolio dipilih, menu portfolio aktif
if ($_GET["page"]=="portfolio") { ?>
  <li class="active">
        <a href="portfolio">  Gula Darah </a>
    </li>
<?php
}
// jika tidak, menu portfolio tidak aktif
else { ?>
  <li>
        <a href="portfolio"> Gula Darah </a>
    </li>
<?php
}   

// jika menu contact dipilih, menu contact aktif
if ($_GET["page"]=="contact") { ?>
  <li class="active">
        <a href="contact"> Tanya Dokter </a>
    </li>
<?php
}
// jika tidak, menu contact tidak aktif
else { ?>
  <li>
        <a href="contact"> Tanya Dokter </a>
    </li>
<?php
}           
?>
</ul>