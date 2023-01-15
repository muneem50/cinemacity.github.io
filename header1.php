<?php 
if (!session_id()) {
	session_start();
} 
include 'db.php';
if (empty($_SESSION['user'])) {
	// header('Location: adminpage.php');
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
						
									
						?>
					</ul>
				</div>
				<div class="header-right">
					<div class="cart box_1">
					<a class="fontColor" href="index.html">  <span class='glyphicon glyphicon-arrow-left'> Back </a>	
								
						
					</div>
				</div>
				<div class="clearfix"> </div> 
			</div>
		</div>
	</div>

</body>
</html>


