 

<?php
// Panggil koneksi database.php untuk koneksi database
require_once "../../config/database.php";

if (isset($_POST['send'])) {
    // ambil data hasil submit dari form
    $name    = mysqli_real_escape_string($mysqli, trim($_POST['name']));
    $email   = mysqli_real_escape_string($mysqli, trim($_POST['email']));
    $message = mysqli_real_escape_string($mysqli, trim($_POST['message']));

    // perintah query untuk menyimpan data ke tabel message
    $query = mysqli_query($mysqli, "INSERT INTO is_message(name,email,message)
                                    VALUES('$name','$email','$message')")
                                    or die('Ada kesalahan pada query insert : '.mysqli_error($mysqli));    

    // cek query
    if ($query) {
        // jika berhasil tampilkan pesan berhasil simpan data
        header("location: ../../contact-success");
    }   
}   
?>