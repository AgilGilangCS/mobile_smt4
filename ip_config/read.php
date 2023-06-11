<?php
$conn=new mysqli("localhost", "root", "", "blackwooden");
$query=mysqli_query($conn, "select * from barang");
$data=mysqli_fetch_all($query, MYSQLI_ASSOC);
echo json_encode($data);
?>