<?php
    session_start();
    if(!isset($_SESSION['username']))
    {
        header("Location: login.php");
        exit();
    }
?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Insurance</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />
      <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="bootstrap3-wysihtml5.min.css">

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="#000033">

    <!--
data-image="assets/img/sidebar-5.jpg"
        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text">
                    INSURANCE ADMIN
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="index.php">
                         <i class="fa fa-dashboard"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="admins.php">
                        <i class="fa fa-user-md"></i>
                        <p>Admins</p>
                    </a>
                </li>
                <li>
                    <a href="policies.php">
                        <i class="pe-7s-note2"></i>
                        <p>Policies</p>
                    </a>
                </li>
                <li>
                    <a href="clients.php">
                        <i class="fa fa-users"></i>
                        <p>Clients</p>
                    </a>
                </li>
                <li>
                    <a href="subcriptions.php">
                        <i class="pe-7s-switch"></i>
                        <p>Subcriptions</p>
                    </a>
                </li>
                <li>
                    <a href="sms.php">
                        <i class="fa fa-comments"></i>
                        <p>SMS</p>
                    </a>
                </li>
               
				<li class="active-pro">
                    <a href="#">
                        <i class="pe-7s-help1"></i>
                        <p>Help</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>
</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

	<script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();
/*
        	$.notify({
            	//icon: 'pe-7s-gift',
            	//message: "Welcome to <b>Insurance</b> ."

            },{
                type: 'info',
                timer: 4000
            });*/

    	});
	</script>
<script src="ckeditor.js"></script>
<script src="bootstrap3-wysihtml5.all.min.js"></script>

<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
  })
</script>
</html>
