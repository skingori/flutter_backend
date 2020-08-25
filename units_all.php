<?php

include 'database.php';

$action = $_POST['action'];

if ('GET_UNIT' == $action) {
    $dbdata = array();
    $sql = "SELECT * FROM `unit` ORDER BY Unit_ID DESC";
    $result = $link->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $dbdata[] = $row;
        }
        echo json_encode($dbdata);
    } else {
        echo "error";
    }
    $link->close();
    return;
}

if ('ADD_UNIT' == $action) {
    $Unit_Code = $_POST['Unit_Code'];
    $Unit_Name = $_POST['Unit_Name'];
    $Unit_Description = $_POST['Unit_Description'];
    $link->query("INSERT INTO `unit`(Unit_Code,Unit_Name,Unit_Description)
    	VALUES('" . $Unit_Code . "','" . $Unit_Name . "','" . $Unit_Description . "')");
    echo 'success';
    return;
}

if ('DELETE_UNIT' == $action) {
    $id = $_POST['id'];
    $link->query("DELETE FROM `unit` WHERE  Unit_ID = '" . $id . "'");
    $link->close();
    return;
}

if ('EDIT_UNIT' == $action) {
    $id = $_POST['id'];
    $Course_Name = $_POST['Course_Name'];
    $Course_Description = $_POST['Course_Description'];

    $link->query("UPDATE course SET  Course_Name= '" . $Course_Name . "', Course_Description= '" . $Course_Description . "'");
    $link->close();
    return;
}
