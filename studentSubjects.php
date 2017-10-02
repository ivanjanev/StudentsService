<?php
/**
 * Created by PhpStorm.
 * User: Ivan
 * Date: 06-Sep-17
 * Time: 13:41
 */
require ('dbconnect.php');

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$indeks = $request->indeks;

$sql = 'SELECT subjects.name,subjects.grade FROM subjects JOIN student ON student.id=subjects.studentId WHERE indeks="'.$indeks.'"';

$result = mysqli_query($con,$sql);

$subjectName = array();

while($row = mysqli_fetch_assoc($result))
{
    array_push($subjectName,$row);
}
echo json_encode($subjectName);

?>