<?php
/**
 * Created by PhpStorm.
 * User: ivanj
 * Date: 31-Aug-17
 * Time: 20:33
 */
require("dbconnect.php");

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$sub = $request->subject;

$sql = 'SELECT * FROM subjects';

$result = mysqli_query($con,$sql);

$subjectName = array();
$subjectPassed = array();
$subjectFinals = array();

while($row = mysqli_fetch_assoc($result))
{
    $name = $row['name'];
    $grade = $row['grade'];
    if(!array_key_exists($name,$subjectName))
    {
        $subjectName[$name] = 1;
    }
    else{
        $subjectName[$name] = $subjectName[$name]+1;
    }
    if($grade > 5)
    {
        if(!array_key_exists($name,$subjectPassed))
        {
            $subjectPassed[$name] = 1;
        }
        else{
            $subjectPassed[$name] = $subjectPassed[$name]+1;
        }
    }
}
$totalListenedSubjects = 0;
foreach ($subjectName as $k=>$v)
{
    $totalListenedSubjects+=$v;
}
foreach ($subjectName as $key=>$value)
{
    $subName = $key;
    $per = round(($subjectPassed[$key]/$value)*100,2);
    $listenedPercent = round(($value/$totalListenedSubjects)*100,2);
    array_push($subjectFinals,array('name'=>$subName,'percent'=>$per,'listenedPercent'=>$listenedPercent));

}
echo json_encode($subjectFinals);
?>