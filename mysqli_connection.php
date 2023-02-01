<?php 
error_reporting(0);
$mysqli = new mysqli("localhost","root","","pwad4");

if($mysqli->connect_errno)
{
	echo "Not Connected to Database. Try Again".$mysqli->connect_error." "."Error code".$mysqli->connect_errno;
}

else
{
	echo "Successfully connected";
}

?>