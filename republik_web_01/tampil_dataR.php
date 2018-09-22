<?php
	include 'koneksi.php';
	
	$id = $_GET["id"];
	$value = array();
	$query = mysqli_query($con, "SELECT * FROM items");
	while($row  = mysqli_fetch_array($query)) {
         // Menetapkan setiap baris data ke array asosiatif
         $value[] = $row;
      }

      // Return value JSON
      echo json_encode($value);
?>