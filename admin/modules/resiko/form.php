 
 <?php  
// fungsi untuk pengecekan tampilan form
// jika form add data yang dipilih
if ($_GET['form']=='add') { ?> 
  <!-- tampilan form add data -->
	<!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <i style="margin-right:7px" class="fa fa-edit"></i> Add Artikel
    </h1>
    <ol class="breadcrumb">
      <li><a href="?module=home"><i class="fa fa-home"></i> Home </a></li>
      <li><a href="?module=resiko"> Resiko </a></li>
      <li class="active"> Add </li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <!-- form start -->
          <form role="form" class="form-horizontal" method="POST" action="modules/resiko/proses.php?act=insert" method="POST" enctype="multipart/form-data">
            <div class="box-body">

              <div class="form-group">
                <label class="col-sm-1 control-label">Title</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="title" autocomplete="off" placeholder="Judul" required>
                </div>
              </div>
              
              <br>
               <div class="form-group"> 
                  <label class="col-sm-1 control-label">Deskripsi </label>
                   <div class="col-sm-8">
                    <textarea class="form-control" id="ckeditor" name="deskripsi" autocomplete="off" placeholder="Deskripsi"></textarea>
                </div>
                </div>
              
              <br>

              <div class="form-group">
                <label class="col-sm-1 control-label">Image</label>
                <div class="col-sm-8">
                  <input style="height:35px" type="file" name="image" autocomplete="off" required>
                </div>
              </div>

            </div><!-- /.box body -->

            <div class="box-footer">
              <div class="form-group">
                <div class="col-sm-offset-1 col-sm-11">
                  <input type="submit" class="btn btn-primary btn-submit" name="save" value="Save">
                  <a href="?module=resiko" class="btn btn-default btn-reset">Cancel</a>
                </div>
              </div>
            </div><!-- /.box footer -->
          </form>
        </div><!-- /.box -->
      </div><!--/.col -->
    </div>   <!-- /.row -->
  </section><!-- /.content -->
<?php
}
// jika form edit data yang dipilih
// isset : cek data ada / tidak
elseif ($_GET['form']=='edit') { 
  if (isset($_GET['id'])) {
      // fungsi query untuk menampilkan data dari tabel resiko
      $query = mysqli_query($mysqli, "SELECT * FROM is_resiko WHERE resiko_id='$_GET[id]'") 
                                      or die('Ada kesalahan pada query tampil data resiko : '.mysqli_error($mysqli));
      $data  = mysqli_fetch_assoc($query);
    }
?>
  <!-- tampilan form add data -->
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <i style="margin-right:7px" class="fa fa-edit"></i> Change Artikel
    </h1>
    <ol class="breadcrumb">
      <li><a href="?module=home"><i class="fa fa-home"></i> Home </a></li>
      <li><a href="?module=resiko"> Artikel </a></li>
      <li class="active"> Change </li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <!-- form start -->
          <form role="form" class="form-horizontal" method="POST" action="modules/resiko/proses.php?act=update" method="POST" enctype="multipart/form-data">
            <div class="box-body">
              
              <input type="hidden" name="resiko_id" value="<?php echo $data['resiko_id']; ?>">

              <div class="form-group">
                <label class="col-sm-1 control-label">Title</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="title" autocomplete="off" value="<?php echo $data['title']; ?>" required>
                </div>
              </div>

              <br>

              <div class="form-group">
                <label class="col-sm-1 control-label">Image</label>
                <div class="col-sm-8">
                  <input style="height:35px" type="file" name="image" autocomplete="off">
                  <br>
                  <img src="../images/resiko/<?php echo $data['image']; ?>" height="150">
                </div>
              </div>

            </div><!-- /.box body -->

            <div class="box-footer">
              <div class="form-group">
                <div class="col-sm-offset-1 col-sm-11">
                  <input type="submit" class="btn btn-primary btn-submit" name="save" value="Save">
                  <a href="?module=resiko" class="btn btn-default btn-reset">Cancel</a>
                </div>
              </div>
            </div><!-- /.box footer -->
          </form>
        </div><!-- /.box -->
      </div><!--/.col -->
    </div>   <!-- /.row -->
  </section><!-- /.content -->
<?php
}
?>