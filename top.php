<?php
    //fetch me users
    include "conn.php";
    $user = $_SESSION['username'];
    $sql = "SELECT * FROM user_details WHERE  email_Address='$user'";
    $query1 = mysqli_query($conn,$sql);
    $row_user = mysqli_fetch_assoc($query1);
?>
<div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.php">Dashboard</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="index.php" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
								<p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                       
                        </li>
                       
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
					
                        <li>
						
                           <a href="account.php" title="<?php echo $_SESSION['username'];?>">
                               <p><i class="fa fa-edit"></i>
                               <?php echo ucfirst($row_user['sur_Name']);?></p>
                            </a>
                        </li>
                       
                        <li>
                            <a href="logout.php" title="<?php echo $_SESSION['username'];?>">
                                <p><i class="fa fa-sign-out"></i>
								Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
        </nav>
		
