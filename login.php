<?php
/**
 * Created by PhpStorm.
 * User: ivanj
 * Date: 30-Aug-17
 * Time: 17:57
 */
require ('dbconnect.php');

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$email = $request->email;
$pass = $request->password;


$emailT = mysqli_real_escape_string($con,$email);
$passT = mysqli_real_escape_string($con,$pass);
$cryptPass = crypt($passT,$emailT);

$sql = 'SELECT * FROM user WHERE email="'.$emailT.'" AND password="'.$cryptPass.'"';
$result = mysqli_query($con,$sql);
if(mysqli_num_rows($result) == 0)
  {
      echo 2;
  }
  else
  {
      if (session_status() == PHP_SESSION_NONE) {
          session_start();
      }
      $row = mysqli_fetch_assoc($result);
      $_SESSION['id']= $row['id'];
      echo 1;
  }
?>