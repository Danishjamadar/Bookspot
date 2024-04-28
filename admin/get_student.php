<?php 
require_once("includes/config.php");
if(!empty($_POST["studentid"])) {
//   $studentid= strtoupper($_POST["studentid"]);
//     $sql ="SELECT FullName,Status FROM tblstudents WHERE StudentId=:studentid";
//     $sql ="SELECT FullName,Status FROM tblfaculties WHERE StudentId=:studentid";
// $query= $dbh -> prepare($sql);
// $query-> bindParam(':studentid', $studentid, PDO::PARAM_STR);
// $query-> execute();
// $results = $query -> fetchAll(PDO::FETCH_OBJ);
// $cnt=1;
// if($query -> rowCount() > 0)
// {
// foreach ($results as $result) {
// if($result->Status==0)
// {
// echo "<span style='color:red'> Student ID Blocked </span>"."<br />";
// echo "<b>Student Name-</b>" .$result->FullName;
//  echo "<script>$('#submit').prop('disabled',true);</script>";
// } 

$studentid = strtoupper($_POST["studentid"]);
$sql1 = "SELECT FullName,Status FROM tblstudents WHERE StudentId=:studentid";
$sql2 = "SELECT FullName,Status FROM tblfaculties WHERE StudentId=:studentid";
$query1 = $dbh -> prepare($sql1);
$query1->bindParam(':studentid', $studentid, PDO::PARAM_STR);
$query1->execute();
$results1 = $query1 -> fetchAll(PDO::FETCH_OBJ);
$query2 = $dbh -> prepare($sql2);
$query2->bindParam(':studentid', $studentid, PDO::PARAM_STR);
$query2->execute();
$results2 = $query2 -> fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query1 -> rowCount() > 0 || $query2 -> rowCount() > 0)
{
foreach ($results1 as $result1) {
if($result1->Status==0)
{
echo "<span style='color:red'> Student ID Blocked </span>"."<br />";
echo "<b>Student Name-</b>".$result1->FullName;
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else {
echo htmlentities($result1->FullName);
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}
foreach ($results2 as $result2) {
echo htmlentities($result2->FullName);
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}
else {
?>
<?php  
echo "<span style='color:red'> Invaid User Id. Please Enter Valid User id .</span>";
echo "<script>$('#submit').prop('disabled',true);</script>";
}
}
?>