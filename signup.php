<?php 
session_start();

	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$user_name = $_POST['user_name'];
		$password = $_POST['password'];

		if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
		{
			$query_valid="select user_name from customer where user_name='".$user_name."'";
			$result_valid=mysqli_query($con,$query_valid);
			if((mysqli_num_rows($result_valid) > 0))
			{	
				echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
		<strong>Oops!</strong> User name already occupied plz select different user name !
		<button type='button' class='close' data-dismiss='alert' aria-label='Close'>
		<span aria-hidden='true'>×</span>
		</button>
		</div>";
			}
			else{



			// $queryf="select * from person";
			$queryf="select * from customer";
			$result=mysqli_query($con,$queryf);
			//
			


			//
			// $row = mysqli_num_rows($result);
            // $row=$row+1;
            // $user_id="CU-".strval($row);

			//save to database
			//$user_id = random_num(20);
			// $query = "insert into person (id,user_name,user_password) values ('$user_id','$user_name','$password')";
			// $query1 = "insert into customer (id) values ('$user_id')";
		
		
		
		
			$query = "insert into customer (id,user_name,user_password) values ('$user_id','$user_name','$password')";
			
			
			
			
			
			
			
			
			mysqli_query($con, $query);
			// mysqli_query($con, $query1);

			header("Location: login.php");
			die;
			}
		}else
		{
			// echo "Please enter some valid information!";
			echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
			<strong>Oops!</strong> PLZ FILL THE BOXES FIRST !
			<button type='button' class='close' data-dismiss='alert' aria-label='Close'>
			<span aria-hidden='true'>×</span>
			</button>
			</div>";
		}
	}
?>


<!DOCTYPE html>
<html>
<head>
	<title>Signup</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
  <link href="https://fonts.googleapis.com/css?family=Oxygen:400,300,700" rel="stylesheet" type="text/css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
  <link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="css/styles.css" />
  
</head>
<body style="background-image: url('Cinemacity/black.jpg'); width:100%
 background-repeat: no-repeat;"> 

	

	<style type="text/css">
	
	#text{

		height: 25px;
		border-radius: 5px;
		padding: 4px;
		border: solid thin #aaa;
		width: 100%;
	}

	#button{
		padding: 10px;
		width: 100px;
		color: white;
		background-color: blue;
		border: none;
	}

	#box{
		background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0, 0.4);
		margin: auto;
		width: 50%;
		padding: 20px 30px;
		margin-top:10%;
		
	}

	</style>

	<div id="box">
		<form method="post">
			<!-- <div style="font-size: 20px;margin: 10px;color: white;">Signup</div>
		 -->
		 <h3 class='text-center get my-0 info'>Customer Signup</h3><br><br>
<div>Username
			<input id="text" type="text" name="user_name" class="control"><br><br>
</div>

<div>Password
			<input id="text" type="password" name="password" class="control"><br><br>
</div>
			<!-- <input id="button" type="submit" value="Signup" ><br><br> -->
			<!-- <button type="submit"  class="btn btn-outline-primary"value="Login"></button><br><br> -->
			<input  type="submit" class="btn btn-primary" value="SignUp"><br><br>
			



			<!-- <h6><a href="login.php">Click to Login</a><br><br></h6> -->
					
			<a  href="login.php" class="btn btn-primary">Click to Login</a><br>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>
<script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

</body>
</html>