

	<div style="width:650px" class="modal-dialog">
		<div class="modal-content">

			<div class="modal-body">
				<div class="row">
		            <?php
		            require_once "../../config/database.php";

		            $resiko_id = $_GET['id'];

		            // fungsi query untuk menampilkan data dari tabel resiko
		            $query = mysqli_query($mysqli, "SELECT * FROM is_resiko WHERE resiko_id='$resiko_id'")
		                                            or die('Ada kesalahan pada query tampil resiko : '.mysqli_error($mysqli));

		            $data = mysqli_fetch_assoc($query);
		            ?>
	                <div class="col-sm-12 col-md-12">
	                	<br>
	                    <div class="thumbnail">
	                        <img width="50%" src="images/resiko/<?php echo $data['image']; ?>" alt="Resiko">
	                        <div class="caption">
	                            <p> <strong> <?php echo $data['title']; ?></strong></p>
	                            <p><?php echo $data['deskripsi']; ?></p>
	                        </div>
	                    </div>
	                </div>
	       		</div>
			</div>

			<div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <a href="registrasi"><button type="button" class="btn btn-danger">Konsultasi</button></a>
		    </div>
		</div>
	</div>