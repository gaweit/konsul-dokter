 

<?php
/* panggil file database.php untuk koneksi ke database */
require_once "../config/database.php";
/* panggil file fungsi tambahan */
require_once "../config/fungsi_tanggal.php";

// fungsi untuk pengecekan status login user 
// jika user belum login, alihkan ke halaman login dan tampilkan message = 1
if (empty($_SESSION['username']) && empty($_SESSION['password'])){
	echo "<meta http-equiv='refresh' content='0; url=index.php?alert=1'>";
}
// jika user sudah login, maka jalankan perintah untuk pemanggilan file halaman konten
else {
	// jika halaman konten yang dipilih home, panggil file view home
	if ($_GET['module'] == 'home') {
		include "modules/home/view.php";
	}

	// jika halaman konten yang dipilih about, panggil file view about
	elseif ($_GET['module'] == 'about') {
		include "modules/about/view.php";
	}

	// jika halaman konten yang dipilih about, panggil file view about
	elseif ($_GET['module'] == 'dm') {
		include "modules/dm/view.php";
	}
	// -----------------------------------------------------------------------------
	
	// jika halaman konten yang dipilih service, panggil file view service
	elseif ($_GET['module'] == 'service') {
		include "modules/service/view.php";
	}
	// -----------------------------------------------------------------------------
	
	// jika halaman konten yang dipilih portfolio, panggil file view portfolio
	elseif ($_GET['module'] == 'portfolio') {
		include "modules/portfolio/view.php";
	}

	// jika halaman konten yang dipilih form portfolio, panggil file form portfolio
	elseif ($_GET['module'] == 'form_portfolio') {
		include "modules/portfolio/form.php";
	}
	// -----------------------------------------------------------------------------
	
	// jika halaman konten yang dipilih etiologi, panggil file view etiologi
	elseif ($_GET['module'] == 'etiologi') {
		include "modules/etiologi/view.php";
	}

	// jika halaman konten yang dipilih form etiologi, panggil file form etiologi
	elseif ($_GET['module'] == 'form_etiologi') {
		include "modules/etiologi/form.php";
	}
	// -----------------------------------------------------------------------------
	
	// jika halaman konten yang dipilih resiko, panggil file view resiko
	elseif ($_GET['module'] == 'resiko') {
		include "modules/resiko/view.php";
	}

	// jika halaman konten yang dipilih form resiko, panggil file form resiko
	elseif ($_GET['module'] == 'form_resiko') {
		include "modules/resiko/form.php";
	}
	// -----------------------------------------------------------------------------

	// jika halaman konten yang dipilih message, panggil file view message
	elseif ($_GET['module'] == 'message') {
		include "modules/message/view.php";
	}

	// jika halaman konten yang dipilih form message, panggil file form message
	elseif ($_GET['module'] == 'form_message') {
		include "modules/message/form.php";
	}
	// -----------------------------------------------------------------------------

	// jika halaman konten yang dipilih password, panggil file view password
	elseif ($_GET['module'] == 'password') {
		include "modules/password/view.php";
	}
}
?>