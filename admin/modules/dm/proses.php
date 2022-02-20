 
<?php
session_start();

// Panggil koneksi database.php untuk koneksi database
require_once "../../../config/database.php";

// fungsi untuk pengecekan status login user 
// jika user belum login, alihkan ke halaman login dan tampilkan pesan = 1
if (empty($_SESSION['username']) && empty($_SESSION['password'])){
    echo "<meta http-equiv='refresh' isi='0; url=index.php?alert=1'>";
}
// jika user sudah login, maka jalankan perintah untuk update
else {
    if (isset($_POST['save'])) {
        if (isset($_POST['dm_id'])) {
            // ambil data hasil submit dari form
            $dm_id = mysqli_real_escape_string($mysqli, trim($_POST['dm_id']));
            $judul    = mysqli_real_escape_string($mysqli, trim($_POST['judul']));
            $isi  = mysqli_real_escape_string($mysqli, trim($_POST['isi']));

            // perintah query untuk mengubah data pada tabel about
            $query = mysqli_query($mysqli, "UPDATE is_dm SET judul    = '$judul',
                                                                isi  = '$isi'
                                                          WHERE dm_id = '$dm_id'")
                                            or die('Ada kesalahan pada query update : '.mysqli_error($mysqli));
            
            // cek query
            if ($query) {
                // jika berhasil alihkan ke halaman about
                header("location: ../../main.php?module=dm");
            }       
        }
    }   
}       
?>