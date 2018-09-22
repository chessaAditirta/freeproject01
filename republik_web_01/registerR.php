<?php
	include_once "koneksi.php";

	class usr{}

	$username = $_POST["username"];
	$f_name = $_POST["f_name"];
	$password = $_POST["password"];
	$confirm_password = $_POST["confirm_password"];
	$birth_place = $_POST["birth_place"];
	$birth_day = $_POST["birth_day"];
	$nik = $_POST["nik"];
	$gender = $_POST["gender"];
	$religion = $_POST["religion"];
	$address = $_POST["address"];
	$email = $_POST["email"];
	$no_telp = $_POST["no_telp"];
	$image = $_POST["image"];


	if ((empty($username))) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Kolom username tidak boleh kosong";
	 	die(json_encode($response));
	 } else if ((empty($f_name))) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Kolom nama lengkap tidak boleh kosong";
	 	die(json_encode($response));
	 } else if ((empty($password))) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Kolom password tidak boleh kosong";
	 	die(json_encode($response));
	 } else if ((empty($confirm_password)) || $password != $confirm_password) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Konfirmasi password tidak sama";
	 	die(json_encode($response));
	} else if ((empty($birth_place))) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Kolom Tempat Lahir tidak boleh kosong";
	 	die(json_encode($response));
	} else if ((empty($birth_day))) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Kolom Tanggal Lahir tidak boleh kosong";
	 	die(json_encode($response));
	} else if ((empty($gender))) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Kolom Jenis Kelamin tidak boleh kosong";
	 	die(json_encode($response));
	} else if ((empty($address))) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Kolom Alamat tidak boleh kosong";
	 	die(json_encode($response));
	} else if ((empty($no_telp))) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Kolom No HP tidak boleh kosong";
	 	die(json_encode($response));
	} else if ((empty($email))) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Kolom Email tidak boleh kosong";
	 	die(json_encode($response));
	} else if ((empty($nik))) {
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Kolom NIK tidak boleh kosong";
		 die(json_encode($response));
	} else if ((empty($gender))) {
			$response = new usr();
			$response->success = 0;
			$response->message = "Kolom Gender tidak boleh kosong";
			die(json_encode($response));
	 } else {
		 if (!empty($username) && $password == $confirm_password){
		 	$num_rows = mysqli_num_rows(mysqli_query($con, "SELECT * FROM 
             users WHERE username='".$username."' AND degree_of_user='R'"));

		 	if ($num_rows == 0){
		 		$query = mysqli_query($con, "INSERT INTO users (nik, 
				 f_name, n_name, gender, birth_place, birth_day, religion, 
				 address, email, no_telp, username, password, status, 
				 degree_of_user, image) 
				 VALUES('".$nik."','".$f_name."','".$n_name."','".$gender."',
				 '".$birth_place."','".$birth_day."','".$religion."',
				 '".$address."','".$email."','".$no_telp."','".$username."',
				 '".$password."','ACTIVE','R','".$image."')");

		 		if ($query){
		 			$response = new usr();
		 			$response->success = 1;
		 			$response->message = "Register berhasil, silahkan login.";
		 			die(json_encode($response));

		 		} else {
		 			$response = new usr();
		 			$response->success = 0;
		 			$response->message = "Username sudah ada";
		 			die(json_encode($response));
		 		}
		 	} else {
		 		$response = new usr();
		 		$response->success = 0;
		 		$response->message = "Username sudah ada";
		 		die(json_encode($response));
		 	}
		 }
	 }

	 mysqli_close($con);

?>	