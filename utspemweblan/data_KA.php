<!-- <a href="login.php">LOGIN</a> -->
<?php
require('controllers/CKA.php');
$mhs = new CKA();
$mhs->cetakListKA();
// $mhs->beranda();
?>