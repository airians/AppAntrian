				<thead>
					<tr>
						<th>No Pasien</th>
						<th>Nama Pasien</th>
						<th>Alamat</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$queryspl = mysqli_query ($konek, "SELECT id_pasien, no_pasien, nama_pasien, alamat FROM tbl_pasien WHERE polis= 'Skincare' ");
						if($queryspl == false){
							die ("Terjadi Kesalahan : ". mysqli_error($konek));
						}

						while ($spl = mysqli_fetch_array ($queryspl)){

							echo "
								<tr>
									<td>$spl[no_pasien]</td>
									<td>$spl[nama_pasien]</td>
									<td>$spl[alamat]</td>
								</tr>";
						}
					?>
				</tbody>
