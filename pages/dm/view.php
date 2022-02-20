 

<?php
// fungsi query untuk menampilkan data dari tabel dm
$query = mysqli_query($mysqli, "SELECT * FROM is_dm WHERE dm_id='1'")
                                or die('Ada kesalahan pada query tampil data dm : '.mysqli_error($mysqli));

$data = mysqli_fetch_assoc($query);
?>
<!-- Page Heading/Breadcrumbs -->
<div class="row">
    <div class="col-lg-12">
        <div class="row">
            <div class="col-lg-12">
                <br><br>
                <div style="padding: 0 10px;text-align:justify"> 
                    <p style="margin-bottom:5px;font-size:20px"><?php echo $data['judul']; ?></p>
                    <p><?php echo $data['isi']; ?></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.row -->
