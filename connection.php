<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "moviedb";

if(!$con = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname))
{

	die("failed to connect!");
}
