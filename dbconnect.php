<?php
/**
 * Created by PhpStorm.
 * User: ivanj
 * Date: 29-Aug-17
 * Time: 22:12
 */
$con = mysqli_connect("localhost","root","","studentsservice");
if (mysqli_connect_errno())
{
    echo "Could not connect with the database: " . mysqli_connect_error();
}
?>