 

<br><br>

<div class="row">
    <div class="col-lg-12">
        <h2 style="padding-bottom: 20px" class="page-header center">
            Solusi Kesehatan Terlengkap
        </h2>

        <br>
    </div>
    
    <div class="col-lg-4 profesional center">
        <i class="fa fa-comments"></i>
        <h3>Chat dengan dokter terpercaya!.</h3>
        <p></p>
        <p>Chat dengan Dokter berpengalaman dan terverifikasi dengan beragam pilihan dokter umum dan dokter spesialis di seluruh Indonesia</p>
    </div>

    <div class="col-lg-4 friendly center">
        <i class="fa fa-stethoscope"></i>
        <h3>Cek Risiko Gulamu Sekarang!</h3>
        <p>Jangan ragu untuk konsultasi dengan ahlinya..! Konsultasikan kesehatan Gula dengan dokter tersertifikasi dan tepercaya ...!!</p>
    </div>

    <div class="col-lg-4 suitable center">
        <i class="fa fa-cog"></i>
        <h3>Covid-19 Test</h3>
        <p>Silakan hubungi customer service kami melalui tlp 081122334455 atau 082233445566, atau melalui layanan "chat dengan kami" .</p>
    </div>
</div>

<br><br>
 
<br><br>

<div class="row">
    <div class="col-lg-12">
        <h2 style="padding-bottom: 20px" class="page-header center">
            Artikel Gula Darah
        </h2>

        <br>
    </div>
    
    <div class="row">
        <?php
        // fungsi query untuk menampilkan data dari tabel portfolio
        $query = mysqli_query($mysqli, "SELECT * FROM is_portfolio ORDER BY portfolio_id DESC LIMIT 6")
                                        or die('Ada kesalahan pada query tampil portfolio : '.mysqli_error($mysqli));

        while($data = mysqli_fetch_assoc($query)) {
        ?>
            <div class="col-sm-4 col-md-4">
                <div class="thumbnail">
                    <a data-toggle="modal" class="open_modal" href="#" data-id="<?php echo $data['portfolio_id']; ?>">
                        <img src="images/portfolio/<?php echo $data['image']; ?>" alt="Portfolio">
                    </a>
                    <div class="caption">
                        <p><?php echo $data['title']; ?></p>
                    </div>
                </div>
            </div>
        <?php  
        }
        ?>
    </div>

    <div class="row">
        <div class="col-lg-12 col-md-12 center">
            <a style="width:150px" href="portfolio" class="btn btn-primary"> View All</a>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <h2 style="padding-bottom: 20px" class="page-header center">
            Artikel Etiologi DM
        </h2>

        <br>
    </div>
    
    <div class="row">
        <?php
        // fungsi query untuk menampilkan data dari tabel etiologi
        $query = mysqli_query($mysqli, "SELECT * FROM is_etiologi ORDER BY etiologi_id DESC LIMIT 6")
                                        or die('Ada kesalahan pada query tampil etiologi : '.mysqli_error($mysqli));

        while($data = mysqli_fetch_assoc($query)) {
        ?>
            <div class="col-sm-4 col-md-4">
                <div class="thumbnail">
                    <a data-toggle="modal" class="open_modal" href="#" data-id="<?php echo $data['etiologi_id']; ?>">
                        <img src="images/etiologi/<?php echo $data['image']; ?>" alt="Etiologi">
                    </a>
                    <div class="caption">
                        <p><?php echo $data['title']; ?></p>
                    </div>
                </div>
            </div>
        <?php  
        }
        ?>
    </div>

    <div class="row">
        <div class="col-lg-12 col-md-12 center">
            <a style="width:150px" href="etiologi" class="btn btn-primary"> View All</a>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <h2 style="padding-bottom: 20px" class="page-header center">
            Artikel Faktor Resiko DM
        </h2>

        <br>
    </div>
    
    <div class="row">
        <?php
        // fungsi query untuk menampilkan data dari tabel resiko
        $query = mysqli_query($mysqli, "SELECT * FROM is_resiko ORDER BY resiko_id DESC LIMIT 6")
                                        or die('Ada kesalahan pada query tampil resiko : '.mysqli_error($mysqli));

        while($data = mysqli_fetch_assoc($query)) {
        ?>
            <div class="col-sm-4 col-md-4">
                <div class="thumbnail">
                    <a data-toggle="modal" class="open_modal" href="#" data-id="<?php echo $data['resiko_id']; ?>">
                        <img src="images/resiko/<?php echo $data['image']; ?>" alt="resiko">
                    </a>
                    <div class="caption">
                        <p><?php echo $data['title']; ?></p>
                    </div>
                </div>
            </div>
        <?php  
        }
        ?>
    </div>

    <div class="row">
        <div class="col-lg-12 col-md-12 center">
            <a style="width:150px" href="resiko" class="btn btn-primary"> View All</a>
        </div>
    </div>
</div>

<div id="modal-form" class="modal" tabindex="-1">

</div>

<script type="text/javascript" src="assets/js/jquery.js"></script>

<!-- Javascript untuk popup modal Edit--> 
<script type="text/javascript">
   $(document).ready(function () {
   $(".open_modal").click(function(e) {
      var m = $(this).attr("data-id");
           $.ajax({
                   url: "pages/portfolio/modal.php",
                   type: "GET",
                   data : {id: m,},
                   success: function (ajaxData){
                   $("#modal-form").html(ajaxData);
                   $("#modal-form").modal('show',{backdrop: 'true'});
               }
               });
        });
      });
</script>
