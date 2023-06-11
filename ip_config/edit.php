<?php
$conn=new mysqli("localhost", "root", "", "blackwooden");
$id = $_POST["id"];
$namapesanan = $_POST["nama pesanan"];
$alamat = $_POST["alamat"];
$notelepon = $_POST["no telepon"];
$deskripsi = $_POST["deskripsi"];
$batastanggal = $_POST["batas tanggal"];
$harga = $_POST["harga"];
$data= mysqli_query($conn, "update barang set namapesanan='$nama pesanan', alamat='$alamat', notelepon='$no telepon', deskripsi='$deskripsi', batastanggal='$batas tanggal', harga='$harga'where id='$id");
if ($data){
    echo json_encode([
        'pesan' => 'Sukses']);
}else{
    echo json_encode([
        'pesan' => 'Gagal']);
}
?>