				<thead>
					<tr>
						<th>No Pasien</th>
						<th>Nama Pasien</th>
						<th>Alamat</th>
						<th>Diagnosis</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$queryspl = mysqli_query ($konek, "SELECT no_pasien, nama_pasien, alamat, diagnosis FROM tbl_rekamedis WHERE polis= 'Skincare' ");
						if($queryspl == false){
							die ("Terjadi Kesalahan : ". mysqli_error($konek));
						}

						while ($spl = mysqli_fetch_array ($queryspl)){

							echo "
								<tr>
									<td>$spl[no_pasien]</td>
									<td>$spl[nama_pasien]</td>
									<td>$spl[alamat]</td>
									<td>$spl[diagnosis]</td>
								</tr>";
						}
					?>
				</tbody>
