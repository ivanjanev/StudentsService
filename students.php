<?php
/**
 * Created by PhpStorm.
 * User: ivanj
 * Date: 29-Aug-17
 * Time: 22:14
 */
require("dbconnect.php");

   $arr = array();
   $sql = 'SELECT * FROM student';
   $result = mysqli_query($con,$sql);
   while($row = mysqli_fetch_assoc($result)){
        array_push($arr,$row);
   }
   echo json_encode($arr);

?>