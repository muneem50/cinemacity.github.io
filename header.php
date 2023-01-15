<?php 
if (!session_id()) {
	session_start();
} 
include 'db.php';
if (empty($_SESSION['user'])) {
// if (empty($_SESSION['admin'])) {
	header('Location: adminpage.php');
}
?>

<!DOCTYPE html>
<html>
<head>
	<link href="js/bootstrap.min.css" rel='stylesheet' type='text/css' />
	<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />

	<style type="text/css">
		.fontColor{
			color: white;
			font-size: 1.0vw;
		}
	</style>
</head>
<body>


	<!-- header-section-starts -->
	<div class="header">
		<div class="header-top-strip">
			<div class="container">
				<div class="header-top-left">
					<ul>
						<?php 
						// $userId=$_SESSION['admin'];
						$userId=$_SESSION['user'];
						// $res=$conn->query("select * from user where userId='$userId';");
						$res=$conn->query("select * from admin where userId='$userId';");
						$row=$res->fetch_object();

						echo "<li ><a href='#'><span class='glyphicon glyphicon-user'> </span>". strtoupper($row->userName)."</a></li>"
						
						?>
					</ul>
				</div>
				<div class="header-right">
					<div class="cart box_1">
							
					<a class="fontColor" href="adminlogin.php"> <span class='glyphicon glyphicon-off'> Logout </a>	
						
					</div>
				</div>
				<div class="clearfix"> </div> 
			</div>
		</div>
	</div>

</body>
</html>


