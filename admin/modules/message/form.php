 

 <?php  
// fungsi untuk pengecekan tampilan form
// jika form add data yang dipilih
if ($_GET['form']=='detail') { ?> 
  <!-- tampilan form add data -->
	<!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <i style="margin-right:7px" class="fa fa-envelope-o"></i> Message
    </h1>
    <ol class="breadcrumb">
      <li><a href="?module=home"><i class="fa fa-home"></i> Home </a></li>
      <li><a href="?module=message"> Message </a></li>
      <li class="active"> Details </li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <br>

        <?php
        // fungsi query untuk menampilkan data dari tabel message
        $query = mysqli_query($mysqli, "SELECT * FROM is_message WHERE message_id='$_GET[id]'")
                                        or die('Ada kesalahan pada query tampil detail message: '.mysqli_error($mysqli));

        while ($data = mysqli_fetch_assoc($query)) { 
          $tgl          = substr($data['date'],0,10);
          $exp          = explode('-',$tgl);
          $date         = $exp[2]."-".$exp[1]."-".$exp[0];
          
          $time         = substr($data['date'],11,8);
        ?>
          <ul class="timeline">
            <li>
              <div class="timeline-item">
                <span class="time">
                  <i class="fa fa-clock-o icon-title"></i> <?php echo $date; ?> <?php echo $time; ?>
                </span>
                <h3 class="timeline-header">
                  <a href="javascript:void(0);"> <i class="fa fa-user icon-title"></i> <?php echo $data['name']; ?></a> (<?php echo $data['email']; ?>)
                </h3>
                <div class="timeline-body"><?php echo $data['message']; ?></div>
              </div>
            </li>
          </ul>
        <?php
        }
        ?>

          <div class="row">
            <div style="padding-right:50px" class="col-lg-8">
                <h3 class="page-header">
                    <i style="margin-right:6px" class="fa fa-envelope-o"></i>
                    Balas Pesan
                </h3>

                <form action="main.php?module=message" method="POST">
                    <div class="form-group">
                        <input type="text" class="form-control" name="name" placeholder="Name" autocomplete="off" value="Balasan Dokter" readonly required>
                    </div>

                    <div class="form-group">
                       <!--  <input type="email" class="form-control" name="email" placeholder="Email" autocomplete="off" required> -->
                       <select class="form-control" id="email" name="email">
                         <option> Pilih Dokter</option>
                         <option value="Dr.Dodit Mulyanto" >Dr.Dodit Mulyanto</option>
                         <option value="Dr.Ariel Noah" >Dr.Ariel Noah</option>
                         <option value="Dr.Sule" >Dr.Sule</option>
                       </select>
                    </div>

                    <div class="form-group">
                        <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                    </div>

                    <input style="width:100px" type="submit" class="btn btn-primary" name="send" value="Send" />
                    <a href="?module=message" class="btn btn-default btn-reset">Back</a> 
                </form>

            </div>

      </div><!--/.col -->
    </div>   <!-- /.row -->
  </section><!-- /.content -->
<?php
}
?>