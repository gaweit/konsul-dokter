 

	<!-- sidebar menu start -->
    <ul class="sidebar-menu">
        <li class="header">MAIN MENU</li>

	<?php 
	// fungsi untuk pengecekan menu aktif
	// jika menu home dipilih, menu home aktif
	if ($_GET["module"]=="home") { ?>
		<li class="active">
			<a href="?module=home"><i class="fa fa-home"></i> Home </a>
	  	</li>
	<?php
	}
	// jika tidak, menu home tidak aktif
	else { ?>
		<li>
			<a href="?module=home"><i class="fa fa-home"></i> Home </a>
	  	</li>
	<?php
	}

	// jika menu DM dipilih, menu DM aktif
	if ($_GET["module"]=="dm") { ?>
		<li class="active">
			<a href="?module=dm"><i class="fa fa-leaf"></i> Definisi DM </a>
	  	</li>
	<?php
	}
	// jika tidak, menu DM tidak aktif
	else { ?>
		<li>
			<a href="?module=dm"><i class="fa fa-leaf"></i> Definisi DM </a>
	  	</li>
	<?php
	}

	// jika menu service dipilih, menu service aktif
	if ($_GET["module"]=="service") { ?>
		<li class="active">
			<a href="?module=service"><i class="fa fa-check-square-o"></i> Layanan </a>
	  	</li>
	<?php
	}
	// jika tidak, menu service tidak aktif
	else { ?>
		<li>
			<a href="?module=service"><i class="fa fa-check-square-o"></i> Layanan </a>
	  	</li>
	<?php
	}

	// jika menu portfolio dipilih, menu portfolio aktif
	if ($_GET["module"]=="portfolio" || $_GET["module"]=="form_portfolio") { ?>
		<li class="active">
			<a href="?module=portfolio"><i class="fa fa-desktop"></i> Gula Darah</a>
	  	</li>
	<?php
	}
	// jika tidak, menu portfolio tidak aktif
	else { ?>
		<li>
			<a href="?module=portfolio"><i class="fa fa-desktop"></i> Gula Darah</a>
	  	</li>
	<?php
	}

	// jika menu etiologi dipilih, menu etiologi aktif
	if ($_GET["module"]=="etiologi" || $_GET["module"]=="form_etiologi") { ?>
		<li class="active">
			<a href="?module=etiologi"><i class="fa fa-desktop"></i> Etiologi</a>
	  	</li>
	<?php
	}
	// jika tidak, menu etiologi tidak aktif
	else { ?>
		<li>
			<a href="?module=etiologi"><i class="fa fa-desktop"></i> Etiologi</a>
	  	</li>
	<?php
	}


	// jika menu resiko dipilih, menu resiko aktif
	if ($_GET["module"]=="resiko" || $_GET["module"]=="form_resiko") { ?>
		<li class="active">
			<a href="?module=resiko"><i class="fa fa-desktop"></i> Resiko</a>
	  	</li>
	<?php
	}
	// jika tidak, menu resiko tidak aktif
	else { ?>
		<li>
			<a href="?module=resiko"><i class="fa fa-desktop"></i> Resiko</a>
	  	</li>
	<?php
	}

	// jika menu message dipilih, menu message aktif
	if ($_GET["module"]=="message" || $_GET["module"]=="form_message") { ?>
		<li class="active">
			<a href="?module=message"><i class="fa fa-envelope"></i> Jawab Dokter </a>
	  	</li>
	<?php
	}
	// jika tidak, menu message tidak aktif
	else { ?>
		<li>
			<a href="?module=message"><i class="fa fa-envelope"></i> Jawab Dokter </a>
	  	</li>
	<?php
	}
	?>
	</ul>
	<!--sidebar menu end-->