<?php

	include 'database.php';

  $Student_FirstName = $_POST['fistname'];
  $Student_LastName = $_POST['lastname'];
  $Student_AdmissionNumber = $_POST['stdnumber'];
  $Student_Gender = $_POST['gender'];

  // Lecturer_ID	Lecturer_FirstName	Lecturer_LastName	Lecturer_email

  $link->query("INSERT INTO `student`(Student_FirstName,Student_LastName,Student_AdmissionNumber,Student_Gender)
  VALUES('".$Student_FirstName."','".$Student_LastName."','".$Student_AdmissionNumber."','".$Student_Gender."')");
