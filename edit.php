<?php

include 'database.php';

$id = $_POST['id'];
$fistname = $_POST['fistname'];
$lastname = $_POST['lastname'];
$phone = $_POST['phone'];
$email = $_POST['email'];

$link->query("UPDATE lecturer SET Lecturer_FirstName = '" . $fistname . "',Lecturer_LastName = '" . $lastname . "',Lecturer_Mobile = '" . $phone . "',Lecturer_Email = '" . $email . "' WHERE Lecturer_ID = '" . $id . "'");

$link->close();

?>
