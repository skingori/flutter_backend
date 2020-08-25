<?php
include 'database.php';

$action = $_POST['action'];

    if('GET_STUDENTS' == $action){
        $dbdata = array();
        $sql = "SELECT * FROM student ORDER BY Student_ID DESC";
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

if ('ADD_STUDENT' == $action) {
    $Student_FirstName = $_POST['fistname'];
    $Student_LastName = $_POST['lastname'];
    $Student_AdmissionNumber = $_POST['stdnumber'];
    $Student_Gender = $_POST['gender'];
    $link->query("INSERT INTO `student`(Student_FirstName,Student_LastName,Student_AdmissionNumber,Student_Gender)
    	VALUES('" . $Student_FirstName . "','" . $Student_LastName . "','" . $Student_AdmissionNumber . "','" . $Student_Gender . "')");
    echo 'success';
    return;
}

if ('DELETE_STUDENT' == $action) {
    $id = $_POST['id'];
    $link->query("DELETE FROM `student` WHERE Student_ID = '" . $id . "'");
    $link->close();
    return;
}

if ('EDIT_STUDENT' == $action) {
    $id = $_POST['id'];
    $Student_FirstName = $_POST['fistname'];
    $Student_LastName = $_POST['lastname'];
    $Student_AdmissionNumber = $_POST['stdnumber'];
    $Student_Gender = $_POST['gender'];

    $link->query("UPDATE student SET Student_FirstName = '" . $Student_FirstName . "',Student_LastName = '" . $Student_LastName . "',Student_AdmissionNumber = '" . $Student_AdmissionNumber . "',Student_Gender = '" . $Student_Gender . "' WHERE Student_ID = '" . $id . "'");
    $link->close();
    return;
}
