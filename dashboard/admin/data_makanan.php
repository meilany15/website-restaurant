<div class="container mt-3">
	<?php if (isset($_SESSION['pesan'])) : ?>
        <?= $_SESSION['pesan'] ?>
    <?php unset($_SESSION['pesan']); endif; ?>
	<div class="card">
		<div class="card-header">
			Data Masakan
		</div>
		<div class="card-body">
			<a href="index.php?makanan"><button class="btn btn-primary btn-sm mb-3">Data Produk</button></a>
		
			<a href="index.php?tambah_makanan"><button class="btn btn-success btn-sm mb-3 float-right">Tambah Data</button></a>
			<table class="table table-bordered table-hover table-striped" id="tabel">
				<thead>
					<tr>
						<th>Kode Barang</th>
						<th>Nama Barang</th>
						<th>Satuan</th>
						<th>Harga</th>
						<th>Tanggal Kadaluarsa</th>
					</tr>
				</thead>
				<tbody>
					<!-- mengambil data dari database -->
					<?php
					$i = 1;
					$sql = mysqli_query($kon, "SELECT * FROM tabel_barang WHERE kd_barang='kd_barang');
					while ($data = mysqli_fetch_array($sql)) : ?>
					<tr>
						<td><?= $i++; ?></td>
						<td><?= $data['kd_barang'] ?></td>
						<td><?= $data['nama_barang'] ?></td>
						<td><?= $data['satuan'] ?></td>
						<td><?= $data['harga'] ?></td>
						<td><?= $data['tgl_kadaluarsa'] ?></td>
						<td>
							<div class="btn-group">
								<a href="index.php?ubah_makanan=<?= $data['kd_barang'] ?>" class="btn btn-sm btn-warning">Ubah</a>
								<a href="fungsi/hapusMakanan.php?id_masakan=<?= $data['kd_barang']; ?>" class="btn btn-danger btn-sm">Hapus</a>
							</div>
						</td>
					</tr>
				<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>