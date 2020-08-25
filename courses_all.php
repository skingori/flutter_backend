<?php
include 'database.php';

$action = $_POST['action'];

    if('GET_COURSE' == $action){
        $dbdata = array();
        $sql = "SELECT * FROM course ORDER BY Course_ID DESC";
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

if ('ADD_COURSE' == $action) {
    $Course_Name = $_POST['Course_Name'];
    $Course_Description = $_POST['Course_Description'];
    $link->query("INSERT INTO `course`(Course_Name,Course_Description)
    	VALUES('" . $Course_Name . "','" . $Course_Description . "')");
    echo 'success';
    return;
}

if ('DELETE_COURSE' == $action) {
    $id = $_POST['id'];
    $link->query("DELETE FROM `course` WHERE Course_ID = '" . $id . "'");
    $link->close();
    return;
}

if ('EDIT_COURSE' == $Naction) {
    $id = $_POST['id'];
    $Course_Name = $_POST['Course_Name'];
    $Course_Description = $_POST['Course_Description'];

    $link->query("UPDATE course SET  Course_Name= '" . $Course_Name . "', Course_Description= '" . $Course_Description . "'");
    $link->close();
    return;
}
