				<thead>
					<tr>
						<th>ID</th>
						<th>No Pasien</th>
						<th>Nama Pasien</th>
						<th>Alamat</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$queryspl = mysqli_query ($konek, "SELECT id_pasien, no_pasien, nama_pasien, alamat FROM tbl_pasien WHERE id_pasien=id_pasien");
						if($queryspl == false){
							die ("Terjadi Kesalahan : ". mysqli_error($konek));
						}
							
						while ($spl = mysqli_fetch_array ($queryspl)){
							
							echo "
								<tr>
									<td>$spl[id_pasien]</td>
									<td>$spl[no_pasien]</td>
									<td>$spl[nama_pasien]</td>
									<td>$spl[alamat]</td>
									<td>
										<a href='#' class='open_modal' id='$spl[id_pasien]'><button type='button' class='btn btn-warning'><i class='fa fa-edit'></i></button></a>
										<a href='pasien_delete.php?id_pasien=$spl[id_pasien]' class='delete-link'><button type='button' class='btn btn-danger'><i class='fa fa-trash-o'></i></button></a>
									</td>
								</tr>";
						}
					?>
				</tbody>