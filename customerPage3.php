<?php 
if (!session_id()) {
# code...
	session_start();
} 
include 'db.php';
?>

<!DOCTYPE html>
<html>
<head>
  <link href="https://bootswatch.com/flatly/bootstrap.css" rel="stylesheet">
  <link href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">

  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

  <script src="js/ie-emulation-modes-warning.js"></script>



  <!-- Custom styles for this template -->
  <link href="css/rotating-card.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/anotherDefault.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
</head>
<body>



<?php 
    $bg_color = '#050301'; // black background color 
    echo "<body style='background-color: $bg_color;'>"; 
  ?> 







  <?php include_once 'header1.php'; ?>

  <?php 
  if (!empty($_SESSION['msg'])) {
    echo "
    <p style='font-family: cursive; text-align: center; color: #5c865c; font-size: 2vw;'>".$_SESSION['msg']."</p>
    ";
    $_SESSION['msg']="";
    $_SESSION['movieId']="";
  }

  ?><div class="container">

  <div  class="panel with-nav-tabs panel-success">
    <div class="panel-heading">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#nowshowing" data-toggle="tab">Showing Now</a></li>
      </ul>
    </div>
    <div class="panel-body">
      <div class="tab-content">
        <div class="tab-pane fade in active" id="nowshowing">


          <?php 
          $count=0;
          // $res=$conn->query("select * from movielist;");

// 1st change

          $res=$conn->query("SELECT * FROM `movielist` WHERE `movielist`.`Genre` = 'Comedy';");
          while ($row=$res->fetch_object()) {
             // $_SESSION['movie']=;

            if ($count==4) {
              echo "<div class='row'>";
              $count=0;
            }

            echo " 
            <div class='col-md-3 col-sm-12'>
              <div class='card-container'>
                <div class='card'>
                  <div class='front'>
                    <div class='cover'>
                      <img src='uploadimages/".$row->image."'/> 
                    </div>
                    <div class='content'>
                      <div class='main'>
                        <h3 class='name'>".$row->Name ."</h3>

                        <p><b>IMDB: </b>".$row->imdb."</p>

                        <p class='profession'><b>Genre: </b>".$row->Genre ."</p>

                        <p class='profession'><b>Director: </b> " .$row->Director ."</p>
                        

                      </div>
                    </div>
                  </div>
                  <!-- end front panel -->
                  <div class='back'>
                    <div class='content'>
                      <div class='main'>
                        <h4 class='text-center'>".$row->Name ."</h4>
                        <p class='text-center'>".$row->Description ." </p>
                      </div>
                      <div style='margin-top: 10vw;' class='buy_ticket'>

                       <form action='ticketProcessing.php' method='post' >
                        <input type='hidden' name='movieId' value='".$row->movieId."' >
                        <input type='submit'  class='btn btn-primary btn-xs btn-block' type='submit' value='Showtime and Details' name='submit'>
                      </form>

                    </div>
                  </div>
                </div> <!-- end card -->
              </div> <!-- end card-container -->
            </div>
          </div>";

          $count++;
        } ?>




      </div>
    </div>
  </div>
</div>
</div>

</div>
</div>

</body>
</html>