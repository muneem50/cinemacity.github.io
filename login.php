<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
  <link href="https://fonts.googleapis.com/css?family=Oxygen:400,300,700" rel="stylesheet" type="text/css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
  <link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="css/styles.css" />
</head>
<body>

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
		
			// $queryss = "select p.id from person p,customer c where user_name='".$user_name."' AND user_password='".$password."' AND c.id=p.id limit 1";
			$queryss = "select * from customer where user_name='".$user_name."' AND user_password='".$password."'";
			$resultss= mysqli_query($con, $queryss);
			$cus_id1 = $resultss->fetch_array()[0] ?? '';
			$_SESSION['uid']=$cus_id1;
			
			// addedto tranfer element


			
			
		//read from database

			// $query = "select * from person where user_name = '$user_name' limit 1";
			// $query="select *  from person p,customer c where user_name='".$user_name."' AND user_password='".$password."' AND c.id=p.id limit 1";

			$query="select * from customer where user_name='".$user_name."' AND user_password='".$password."' ";
	


			$result = mysqli_query($con, $query);
			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{$user_data = mysqli_fetch_assoc($result);
					if($user_data['user_password'] === $password)
					{
					$_SESSION['id'] = $user_data['id'];
					header("Location: index.html");
					die;
				}
			}
		}
		echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
		<strong>Oops!</strong> Wrong Username or Password
		<button type='button' class='close' data-dismiss='alert' aria-label='Close'>
		<span aria-hidden='true'>×</span>
		</button>
		</div>";
		}
		else{
			echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
    <strong>Oops!</strong> Wrong Username or Passsword
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
	<title>Login</title>
</head>

<body style="background-image: url('Cinemacity/black.jpg');">

<body>
<a href="adminlogin.php"  class="btn btn-outline-info"  >Admin Login</a>
	<style type="text/css">
	
	#text{

		height: 30px;
		border-radius: 5px;
		padding: 4px;
		border: solid thin white;
		width: 100%;
		
	}
	/* ADMIN BUTTON */
	#adbutton{
		padding: 10px;
		width: 100px;
		color: black;
		background-color: yellow;
		border: none;
		text-decoration: none;
	}
	/* LOGIN BUTTON */
	#button{
		padding: 10px;
		width: 100px;
		color: white;
		background-color: lightblue;
		border: none;
	}
	

	#box{
		
		margin: auto;
		
		width: 50%;
	
		margin: auto;
		background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0, 0.4);
		margin-top:10%;
	}
/* SIGNUP BUTTON */
	#dbutton{
		padding: 10px;
		width: 100px;
		color: black;
		background-color: yellow;
		border: none;
		text-decoration: none;
	}

	</style>

	<div id="box">
		
		<form method="post" >
		<h3 class='text-center get my-0 info'>Customer Login</h3><br><br>

      

			<div >Username<input id="text" type="text" name="user_name" class="control" required><br><br></div>
			<div>Password<input id="text" type="password" name="password" class="control" required><br><br></div>

			<input  type="submit" class="btn btn-outline-info" value="Login"><br><br>
			
			<a  href="signup.php" class="btn btn-outline-info">Click to Signup</a><br>
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