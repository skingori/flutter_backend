<?php

	include 'database.php';

	$id = $_POST['id'];

	$link->query("DELETE FROM `lecturer` WHERE Lecturer_ID = '".$id."'");
