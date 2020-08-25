<?php

	include 'database.php';

	$Lecturer_FirstName = $_POST['fistname'];
	$Lecturer_LastName = $_POST['lastname'];
	$Lecturer_Mobile = $_POST['phone'];
	$Lecturer_Email = $_POST['email'];

	// Lecturer_ID	Lecturer_FirstName	Lecturer_LastName	Lecturer_email

	$link->query("INSERT INTO `lecturer`(Lecturer_FirstName,Lecturer_LastName,Lecturer_Email,Lecturer_Mobile)
	VALUES('".$Lecturer_FirstName."','".$Lecturer_LastName."','".$Lecturer_Email."','".$Lecturer_Mobile."')");









































	// include 'database.php';

	// $fistname = $_POST['fistname'];
	// $lastname = $_POST['lastname'];
	// $phone = $_POST['phone'];
	// $address = $_POST['address'];

	// $link->query("INSERT INTO person(fistname,lastname,phone,address)VALUES('".$fistname."','".$lastname."','".$phone."','".$address."')");
