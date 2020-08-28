<?php

class DBOperations
{

    private $host = 'localhost';
    private $user = 'root';
    private $db = 'stpaulmain';
    private $pass = '';
    private $conn;

    public function __construct()
    {

        $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db, $this->user, $this->pass);

    }


    public function insertData($email, $password)
    {

        $hash = $this->getHash($password);
        $encrypted_password = $hash["encrypted"];

        $sql = 'INSERT INTO login SET Login_Username =:email,Login_Password=:password, Login_Rank=:rank, Login_Status=:status';

        $query = $this->conn->prepare($sql);
        $query->execute(array(':email' => $email, ':password' => $encrypted_password, ':rank' => 1, ':status' => 1));
        if ($query) {

            return true;

        } else {

            return false;

        }
    }


    public function checkLogin($email, $password)
    {

        $sql = 'SELECT * FROM `login` WHERE Login_Username=:email AND Login_Password=:password';
        $query = $this->conn->prepare($sql);
        $hash = $this->getHash($password);
        $encrypted_password = $hash["encrypted"];
        $query->execute(array(':email' => $email, ':password' => $encrypted_password));
        $data = $query->fetchObject();

        if ($data) {
            $user["email"] = $data->Login_Username;
            $user["unique_id"] = $data->Login_Rank;
            return $user;

        } else {

            return false;
        }

    }


// public function changePassword($email, $password){
//    $hash = $this -> getHash($password);
//    $encrypted_password = $hash["encrypted"];
//    $salt = $hash["salt"];
//
//    $sql = 'UPDATE login SET encrypted_password = :encrypted_password, salt = :salt WHERE email = :email';
//    $query = $this -> conn -> prepare($sql);
//    $query -> execute(array(':email' => $email, ':encrypted_password' => $encrypted_password, ':salt' => $salt));
//
//    if ($query) {
//
//        return true;
//
//    } else {
//
//        return false;
//
//    }
//
// }

    public function checkUserExist($email)
    {

        $sql = 'SELECT COUNT(*) from login WHERE Login_Username =:email';
        $query = $this->conn->prepare($sql);
        $query->execute(array('email' => $email));

        if ($query) {

            $row_count = $query->fetchColumn();

            if ($row_count == 0) {

                return false;

            } else {

                return true;

            }
        } else {

            return false;
        }
    }

    public function getHash($password)
    {

        $hashedPassword = hash('sha256', $password);
        $hash = array("encrypted" => $hashedPassword);

        return $hash;

    }


    public function verifyHash($password, $hash)
    {

        return password_verify($password, $hash);

    }
}
