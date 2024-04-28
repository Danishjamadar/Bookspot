<!DOCTYPE html>
<html>

<head>
    <title>Student Report</title>
    <style>
    button {
        background-color: #4CAF50;
        border: none;
        color: white;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        margin: 10px 0;
    }
    </style>
</head>

<body>
    <?php
	require_once 'includes/config.php';
	$sql = "SELECT tblstudents.StudentId,tblstudents.FullName,tblbooks.BookName,tblbooks.ISBNNumber,tblissuedbookdetails.IssuesDate,tblissuedbookdetails.ReturnDate,tblissuedbookdetails.id as rid from  tblissuedbookdetails join tblstudents on tblstudents.StudentId=tblissuedbookdetails.StudentId join tblbooks on tblbooks.id=tblissuedbookdetails.BookId ORDER BY RAND() LIMIT 10";
	$query = $dbh->prepare($sql);
	$query->execute();
	$results = $query->fetchAll(PDO::FETCH_OBJ);

	$table = '
	<table border="1" cellspacing="0" cellpadding="0" style="width:100%; border-collapse: collapse;">
  <tr>
    <th style="background-color: #f2f2f2; padding: 10px;">Student ID</th>
    <th style="background-color: #f2f2f2; padding: 10px;">Student Name</th>
    <th style="background-color: #f2f2f2; padding: 10px;">Book Name</th>
    <th style="background-color: #f2f2f2; padding: 10px;">ISBN Number</th>
    <th style="background-color: #f2f2f2; padding: 10px;">Issued Date</th>
    <th style="background-color: #f2f2f2; padding: 10px;">Return Date</th>
  </tr>

		<tr>';
	$cnt = 1;
	if ($query->rowCount() > 0) {
		foreach ($results as $result) {
			// echo"<script>alert('".$result->FullName."')</script>";
			$table .= '<tr>
			<td><center>' . $result->StudentId . '</center></td>
				<td><center>' . $result->FullName . '</center></td>
				<td><center>' . $result->BookName . '</center></td>
				<td><center>' . $result->ISBNNumber . '</center></td>
				<td><center>' . date('d-m-Y', strtotime($result->IssuesDate)) . '</center></td>
				<td><center>' . date('d-m-Y', strtotime($result->ReturnDate)) . '</center></td>
			</tr>';
		}
	}
	$table .= '
		</tr>		
	</table>
	<button onClick="window.print()">Print this page</button>
	';

	echo $table;



	?>
</body>

</html>