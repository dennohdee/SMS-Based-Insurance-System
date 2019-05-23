<?php
	$conn = mysqli_connect("localhost","root","","insdb");
	//check conn
	if(mysqli_connect_errno())
	{
		echo "ERROR: Failed to connect: ".mysqli_connect_error();
	}
?>