<?php


include 'database.php';

$action = $_POST['action'];

if ('GET_STUDENT_UNIT' == $action) {
    $dbdata = array();
    $id = $_POST['id'];
    $sql = "SELECT * FROM `unit_student` WHERE Unit_Student_Unit_ID='$id' ORDER BY Unit_Student_ID DESC";
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

if ('ADD_STUDENT_UNIT' == $action) {
    $Unit_Student_Student_ID = $_POST['Unit_Student_Student_ID'];
    $Unit_Student_Unit_ID = $_POST['Unit_Student_Unit_ID'];
    $link->query("INSERT INTO `unit_student`(Unit_Student_Student_ID,Unit_Student_Unit_ID)
    	VALUES('" . $Unit_Student_Student_ID . "','" . $Unit_Student_Unit_ID . "')");
    echo 'success';
    return;
}

if ('DELETE_STUDENT_UNIT' == $action) {
    $id = $_POST['id'];
    $link->query("DELETE FROM `unit_student` WHERE Unit_Student_ID = '" . $id . "'");
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
