

<?php
/* panggil file database.php untuk koneksi ke database */
require_once "config/database.php";
/* panggil fungsi untuk format tanggal */
require_once "config/fungsi_tanggal.php";

// fungsi untuk pemanggilan file halaman konten
// jika halaman konten yang dipilih home, panggil file view home
if ($_GET['page'] == 'home') {
	include "pages/home/view.php";
}

// jika halaman konten yang dipilih about, panggil file view about
if ($_GET['page'] == 'about') {
	include "pages/about/view.php";
}

// jika halaman konten yang dipilih about, panggil file view about
if ($_GET['page'] == 'dm') {
	include "pages/dm/view.php";
}

// jika halaman konten yang dipilih service, panggil file view service
if ($_GET['page'] == 'service') {
	include "pages/service/view.php";
}

// jika halaman konten yang dipilih portfolio, panggil file view portfolio
if ($_GET['page'] == 'portfolio') {
	include "pages/portfolio/view.php";
}

// jika halaman konten yang dipilih etiologi, panggil file view etiologi
if ($_GET['page'] == 'etiologi') {
	include "pages/etiologi/view.php";
}

// jika halaman konten yang dipilih resiko, panggil file view resiko
if ($_GET['page'] == 'resiko') {
	include "pages/resiko/view.php";
}
// jika halaman konten yang dipilih registrasi, panggil file view registrasi
if ($_GET['page'] == 'registrasi') {
	include "pages/registrasi/view.php";
}

// jika halaman konten yang dipilih contact, panggil file view contact
if ($_GET['page'] == 'contact') {
	include "pages/contact/view.php";
}
// jika halaman konten yang dipilih contact, panggil file view contact
if ($_GET['page'] == 'video') {
	include "pages/video/view.php";
}
?>