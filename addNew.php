<?php
/**
 * Created by PhpStorm.
 * User: Ivan
 * Date: 07-Sep-17
 * Time: 16:47
 */
require ('dbconnect.php');

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$name = $request->name;
$surname = $request->surname;
$indeks = $request->indeks;
$smer = $request->smer;

$sql = "INSERT INTO student (name,surname,indeks,smer) VALUES ('$name','$surname','$indeks','$smer')";
if(mysqli_query($con,$sql))
{
    echo "done";
}
else
{
    mysqli_error($con);
}
?>