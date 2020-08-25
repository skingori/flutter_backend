<?php

	include 'database.php';

	$id = $_POST['id'];
	$link->query("DELETE FROM `student` WHERE `Student_ID` = '".$id."'");
