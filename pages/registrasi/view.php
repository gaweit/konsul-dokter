 <!-- Page Heading/Breadcrumbs -->
<div class="row">
    <div class="col-lg-12">

    <?php  
    // fungsi untuk menampilkan pesan
    // jika alert = "" (kosong)
    // tampilkan pesan "" (kosong) 
    if (empty($_GET['alert'])) {
        echo "";
    } 
    // jika alert = 1
    // tampilkan pesan Gagal "NISN sudah terdaftar"
    elseif ($_GET['alert'] == 1) { ?>





        <div style="margin-top:25px" class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong><i class="glyphicon glyphicon-alert"></i> Success!</strong> Pesan Anda akan di balas Via Email.
        </div>
    <?php
    } 
    ?>
        <div class="row">
            <div style="padding-right:50px" class="col-lg-8">
                <h3 class="page-header">
                    <i style="margin-right:6px" class="fa fa-envelope-o"></i>
                    Kirim Pesan Ke Dokter
                </h3>

                <form action="pages/registrasi/proses.php" method="POST">
                    <div class="form-group">
                        <input type="text" class="form-control" name="name" placeholder="Name" autocomplete="off" required>
                    </div>

                    <div class="form-group">
                        <input type="email" class="form-control" name="email" placeholder="Email" autocomplete="off" required>
                    </div>

                    <div class="form-group">
                        <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                    </div>

                    <input style="width:100px" type="submit" class="btn btn-primary" name="send" value="Send" />
                </form>

            </div>

            <div class="col-lg-4">
                <div style="margin-top:70px"></div>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div style="padding: 0 10px;text-align:justify"> 
                            <h4>Address</h4>
                            <div style="border: 1px dotted #eee; margin: 10px 0 10px 0"></div>
                            <p><i style="margin-right:10px" class="fa fa-map-marker"></i>Kec. Pacitan, Kabupaten Pacitan, Jawa Timur</p>
                            <div style="border: 1px dotted #eee; margin: 10px 0 10px 0"></div>
                            <p><i style="margin-right:10px" class="fa fa-phone"></i>+62 856-2423-1232</p>
                            <div style="border: 1px dotted #eee; margin: 10px 0 10px 0"></div>
                            <p><i style="margin-right:10px" class="fa fa-envelope"></i>telehealt@gmail.com</p>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<h1>Riwayat Konsultasi Terbaru</h1>
<div class="box box-primary">
        <div class="box-body">
          <!-- tampilan tabel pesan -->
          <table id="dataTables1" class="table table-bordered table-striped table-hover">
            <!-- tampilan tabel header -->
            <thead>
              <tr>
                <th class="center">No.</th>
                <th class="center">Name</th>
                <th class="center">Email</th>
                <th class="center">Message</th>
                <th class="center">Date</th>
                <th></th>
              </tr>
            </thead>
            <!-- tampilan tabel body -->
            <tbody>
            <?php  
            $no = 1;
            // fungsi query untuk menampilkan data dari tabel message
            $query = mysqli_query($mysqli, "SELECT * FROM is_message ORDER BY message_id DESC")
                                            or die('Ada kesalahan pada query tampil data message: '.mysqli_error($mysqli));

            // tampilkan data
            while ($data = mysqli_fetch_assoc($query)) { 
              $tgl  = substr($data['date'],0,10);
              $exp  = explode('-',$tgl);
              $date = $exp[2]."-".$exp[1]."-".$exp[0];

              if ($data['status']=='y') {
                $warna = "";
              } else {
                $warna = "#fcf8e3";
              }
              // menampilkan isi tabel dari database ke tabel di aplikasi
              echo "<tr style='background:$warna'>
                      <td width='40' class='center'>$no</td>
                      <td width='150'>$data[name]</td>
                      <td width='120'>$data[email]</td>
                      <td width='300'>$data[message]</td>
                      <td width='80' class='center'>$date</td>
                      <td class='center' width='80'>
                        <div>
                           ";
            ?>
                           
            <?php
              echo "    </div>
                      </td>
                    </tr>";
              $no++;
            }
            ?>
            </tbody>
          </table>
        </div><!-- /.box-body -->
      </div><!-- /.box -->
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>

<!-- /.row -->
