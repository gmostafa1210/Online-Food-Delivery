<?php
include "db.php";
session_start();

if(!isset($_SESSION["uid"])){
	header("location:index.php");
}

$uid = $_SESSION["uid"];
$sql = "SELECT * FROM cart WHERE user_id = '$uid'";
$run_query = mysqli_query($con,$sql);
while($row=mysqli_fetch_array($run_query)){
	$pr=$row["product_id"];
	$sql2 = "DELETE FROM cart WHERE user_id = '$uid' AND product_id = '$pr'";
	$run_query2 = mysqli_query($con,$sql2);
}



?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Online Food</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<style>
			table tr td {padding:10px;}
		</style>
	</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<a href="profile.php" class="navbar-brand">Online Food</a>
			</div>

		</div>
	</div>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid">
	
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-heading"></div>
					<div class="panel-body">
						<h1>Thank you </h1>
						<hr/>
						<p> <?php echo $_SESSION["name"]; ?>,Your payment process is 
						successfully completed !!<br/>
						you can buy more food<br/></p>
						<a href="index.php" class="btn btn-success btn-lg">Buy Food</a>
					</div>
					<div class="panel-footer"></div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>
















































