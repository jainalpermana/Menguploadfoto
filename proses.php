<?php
//informasi file
$lokasifile = $_FILES['upfile']['tmp_name'];
$namafile = $_FILES['upfile']['name'];
$sizefile = $_FILES['upfile']['size'];


//tujuan
$tujuan = "foldertujuan/$namafile";

//perintah upload
move_uploaded_file($lokasifile, $tujuan);


?>