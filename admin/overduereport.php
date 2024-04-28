<!DOCTYPE html>
<html>

<head>
    <title>Overdue Report</title>
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
    }

    .total-credit {
        font-weight: bold;
        font-size: 18px;
        color: #c00000;
        margin: 10px 0;
    }

    .total-credit span {
        border-bottom: 1px solid #000;
        padding: 5px;
    }
    </style>
</head>

<body>
    <?php
	require_once 'includes/config.php';

	$sql = "SELECT * from overdue ";
	$query = $dbh->prepare($sql);
	$query->execute();
	$results = $query->fetchAll(PDO::FETCH_OBJ);

	$table = '
	<table border="1" cellspacing="0" cellpadding="0" style="width:100%; border-collapse: collapse;">
  <tr>
			<th style="background-color: #f2f2f2; padding: 10px;">Sr No</th>
			<th style="background-color: #f2f2f2; padding: 10px;">Full Name</th>
			<th style="background-color: #f2f2f2; padding: 10px;">User ID</th>
			<th style="background-color: #f2f2f2; padding: 10px;">Phone Number</th>
			<th style="background-color: #f2f2f2; padding: 10px;">Fine</th>
		</tr>

		<tr>';
	$cnt = 1;
	$totalcredit = 0;
	if ($query->rowCount() > 0) {
		foreach ($results as $result) {
			//echo"<script>alert('".$result->FullName."')</script>";
			$table .= '<tr>
				<td><center>' . $cnt . '</center></td>
				<td><center>' . $result->StudentName . '</center></td>
				<td><center>' . $result->StudentID . '</center></td>
				<td><center>' . $result->MobNumber . '</center></td>
				<td><center>' . $result->Fine . '</center></td>
			</tr>';
			$cnt += 1;
			$totalcredit += $result->Fine;
		}
	}
	$table .= '
		</tr>	
	</table>
	<div align="right" class="total-credit"><span>Total Credit:' . $totalcredit . '</span></div>
	<br>
	<button onClick="window.print()">Print this page</button>
	';
	echo $table;
	?>

</body>

</html>