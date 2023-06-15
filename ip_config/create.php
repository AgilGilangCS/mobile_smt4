<?php
$conn=new mysqli("localhost", "root", "", "blackwooden");
$namapesanan = $_POST["nama pesanan"];
$alamat = $_POST["alamat"];
$notelepon = $_POST["no telepon"];
$deskripsi = $_POST["deskripsi"];
$batastanggal = $_POST["batas tanggal"];
$harga = $_POST["harga"];
$data= mysqli_query($conn, "insert into barang set namapesanan='$nama pesanan', alamat='$alamat', notelepon='$no telepon', deskripsi='$deskripsi', batastanggal='$batas tanggal', harga='$harga'");
if ($data){
    echo json_encode([
        'pesan' => 'Sukses']);
}else{
    echo json_encode([
        'pesan' => 'Gagal']);
}
?>