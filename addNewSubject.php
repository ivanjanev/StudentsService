<?php
/**
 * Created by PhpStorm.
 * User: Ivan
 * Date: 08-Sep-17
 * Time: 13:55
 */
require ('dbconnect.php');

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$name = $request->subject;
$indeks = $request->indeks;
$grade = $request->grade;

$sql = "INSERT INTO subjects (name,grade,studentId) VALUE ('$name','$grade',(SELECT id FROM student WHERE indeks='$indeks'))";
if(mysqli_query($con,$sql))
{
    echo "done";
}
else
{
    echo mysqli_error($con);
}
?>