<?php

session_start();


if(!isset($_SESSION["username"]))
{
	header("location:adminlogin.php");
}
$delete = false;

// Connect to the Database 
$servername = "localhost";
$username = "root";
$password = "";
$database = "moviedb";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn){
    die("Sorry we failed to connect: ". mysqli_connect_error());
}

if(isset($_GET['delete'])){
  $sno = $_GET['delete'];
  $delete = true;


  $sql = "DELETE FROM `review_table` WHERE `review_id` = $sno";
  $result = mysqli_query($conn, $sql);
}
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
if (isset( $_POST['snoEdit'])){
    // Update the record
    $sno = $_POST["snoEdit"];
    //  Name
    $name = $_POST["nameEdit"];
    // Review
    $review = $_POST["reviewEdit"];
}
}
?>

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
  <title> Cinemacity </title>
</head>
<body>
      </form>
      </div>
    </div>
  </div>
        </div>
        </form>
      </div>
    </div>
  </div>
  
  <?php
  
  if($delete){
    echo "<div class='alert alert-success alert-dismissible fade show' role='alert'>
    <strong>Success!</strong> You deleted successfully
    <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
      <span aria-hidden='true'>×</span>
    </button>
  </div>";}?>
  <div class="container my-4">
   
    <h2>Customer's Reviews!</h2> 

<style>
  #adm{
    padding: 10px;
	width: 100px;
	color: black;
	background-color: #87CEEB;
	border: none;
    border-radius: 13px;
	text-decoration: none;
  }
  #rev{
    padding: 10px;
	width: 100px;
	color: black;
	background-color: #87CEEB;
	border: none;
    border-radius: 13px;
	text-decoration: none;
  }
  </style>
</div>
  <div class="container my-4">
    <table class="table" id="myTable">
      <thead>
        <tr>
          <th scope="col">S.No</th>
          <th scope="col">Name</th>
          <th scope="col">Reviews</th>
          <th scope="col">Actions</th>
        </tr>
      </thead>
      <tbody>

    <?php 
    // $sql = "SELECT * FROM `review_table`";


    $sql = "select r.review_id,p.user_name ,r.user_review from review_table r left outer join person p on  r.id=p.id ";
    $result = mysqli_query($conn, $sql);
      $sno = 0;
      while($row = mysqli_fetch_assoc($result)){
      $sno = $sno + 1;
      echo "<tr>
      <th scope='row'>". $sno . "</th>
      <td>". $row['user_name'] . "</td>           
      <td>". $row['user_review'] . "</td>
      <td>      
      <button class='delete btn btn-sm btn-primary' id=d".$row['review_id'].">Delete</button>        
      </td>            
      </tr>";          
      }      
     ?>
    </tbody>
    </table>
  </div>
  <hr>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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

  <!-- Data table -->
  <script>
    $(document).ready(function () {
      $('#myTable').DataTable();

    });
  </script>
  <script>
   
    deletes = document.getElementsByClassName('delete');
    Array.from(deletes).forEach((element) => {
      element.addEventListener("click", (e) => {
        console.log("edit ");
        sno = e.target.id.substr(1);
        if (confirm("Are you sure you want to delete!")) {
          console.log("yes");
          window.location = `review.php?delete=${sno}`;
        }
        else {
          console.log("no");
        }
      })
    })
  </script>
  
</body>

</html>