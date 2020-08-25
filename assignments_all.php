<?php
include 'database.php';

$action = $_POST['action'];

if('GET_ASSIGN' == $action){
    $dbdata = array();
    $sql = "SELECT * FROM `assignment` ORDER BY Assignment_ID DESC";
    $result = $link->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $dbdata[]=$row;
        }
        echo json_encode($dbdata);
    } else {
        echo "error";
    }
    $link->close();
    return;
}

if ('ADD_ASSIGN' == $action) {
    $Assignment_Name = $_POST['Assignment_Name'];
    $Assignment_Marks = $_POST['Assignment_Marks'];
    $Assignment_Description = $_POST['Assignment_Description'];
    $link->query("INSERT INTO `assignment`(Assignment_Name,Assignment_Marks,Assignment_Description)
    	VALUES('" . $Assignment_Name . "','" . $Assignment_Marks . "','" . $Assignment_Description . "')");
    echo 'success';
    return;
}

if ('DELETE_ASSIGN' == $action) {
    $id = $_POST['id'];
    $link->query("DELETE FROM `assignment` WHERE Assignment_ID = '" . $id . "'");
    $link->close();
    return;
}

if ('EDIT_ASSIGN' == $action) {
    $id = $_POST['id'];
    $Course_Name = $_POST['Course_Name'];
    $Course_Description = $_POST['Course_Description'];

    $link->query("UPDATE course SET  Course_Name= '" . $Course_Name . "', Course_Description= '" . $Course_Description . "'");
    $link->close();
    return;
}
