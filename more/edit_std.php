<?php

	include 'database.php';

	$id = $_POST['id'];
	$Student_FirstName = $_POST['fistname'];
	$Student_LastName = $_POST['lastname'];
	$Student_AdmissionNumber = $_POST['stdnumber'];
	$Student_Gender = $_POST['gender'];

	$link->query("UPDATE student SET Student_FirstName = '".$fistname."',Student_LastName = '".$lastname."',Student_AdmissionNumber = '".$Student_AdmissionNumber."',Student_Gender = '".$Student_Gender."' WHERE Student_ID = '".$id."'");
