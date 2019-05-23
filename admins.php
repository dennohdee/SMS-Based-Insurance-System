<?php include 'side.php';?>
<?php include 'top.php';
    include "conn.php";
    //fetch admins
    $user = $_SESSION['username'];
    $sql = "SELECT * FROM user_details WHERE  privilege='admin'";
    $result = $conn->query($sql);
    
    //fetch all users
    $sql1 = "SELECT * FROM user_details WHERE  privilege='user'";
    $result1 = $conn->query($sql1);

    //add admin
    if(isset($_POST['user_Id']))
    {
         $user_Id = stripslashes($_REQUEST['user_Id']);
         $query3 = "UPDATE `user_details` SET `privilege`='Admin' WHERE `user_Id`='$user_Id'";
         $result3 = mysqli_query($conn, $query3);
         if($result3){
            echo '<div align="center" style="margin-left:25%;margin:auto;text-align:center;width:50%;border-radius:4px;position:relative;background-color:#ffbc67;color:#FFFFFF;padding:10px 15px">
                                       
                                        <span><b> Success - </b> User is now admin!</span></br><a href="admins.php" aria-hidden="true" class="close" style="text-decoration:none; font-weight:bold">Go back</a>
                                    </div>';
                                }else{
                                    echo '<div align="center" style="margin-left:25%;margin:auto;text-align:center;width:50%;border-radius:4px;position:relative;background-color:#ffbc67;color:#FFFFFF;padding:10px 15px">
                                       
                                        <span><b> Warning - </b> Invalid Attempt!</span></br><a href="admins.php" aria-hidden="true" class="close" style="text-decoration:none; font-weight:bold">Try Again?</a>
                                    </div>';
                                }
    }

    //strip rights
    //add admin
    if(isset($_POST['userID']))
    {
         $userID = stripslashes($_REQUEST['userID']);
         $query4 = "UPDATE `user_details` SET `privilege`='User'  WHERE `user_Id`='$userID'";
         $result4 = mysqli_query($conn, $query4);
         if($result4){
            echo '<div align="center" style="margin-left:25%;margin:auto;text-align:center;width:50%;border-radius:4px;position:relative;background-color:#ffbc67;color:#FFFFFF;padding:10px 15px">
                                       
                                        <span><b> Success - </b> User is no longer admin!</span></br><a href="admins.php" aria-hidden="true" class="close" style="text-decoration:none; font-weight:bold">Go back</a>
                                    </div>';
                                    echo '<meta http-equiv="refresh" content="1; url=admins.php">';
                                }else{
                                    echo '<div align="center" style="margin-left:25%;margin:auto;text-align:center;width:50%;border-radius:4px;position:relative;background-color:#ffbc67;color:#FFFFFF;padding:10px 15px">
                                       
                                        <span><b> Warning - </b> Invalid Attempt!</span></br><a href="admins.php" aria-hidden="true" class="close" style="text-decoration:none; font-weight:bold">Try Again?</a>
                                    </div>';
                                }
    }
    
?>
<div class="content">
<div class="container-fluid">
			    <nav class="pull-right">
                    
                            <a  style="color:#999" href="index.php">
                                <i class="fa fa-dashboard" ></i> >
                            </a>
                            <a  style="color:#666" href="">
                               Admins
                            </a>
                </nav>
            </div>
             <div class="container-fluid">
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Administrators</h4>
                                <p class="category">Select User to Make Admin</p>
                                <div class="row">
                                <div class="col-md-6">&nbsp;</div>
                                    <div class="col-md-6">
                                      <form name="add" action="" method="post">
                                    <div class="input-group margin pull-right">
                                      <select class="form-control" name="user_Id">
                                      <?php while($row_users = $result1->fetch_assoc()) { ?>
                                        <option value="<?php echo $row_users['user_Id']; ?>"><?php echo $row_users['id_No']; echo "-"; 
                                        echo $row_users['sur_Name']; ?></option>
                                      <?php } ?>
                                     </select>
                                     <span class="input-group-btn">
                                     <button type="submit" class="btn btn-primary btn-fill btn-flat" onclick='return confirm("Give Privileges?")'>Add Admin</button>
                                     </span>
                                </div>
                                </form>  
                                </div>
                            </div>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <tr><th>ID</th>
                                    	<th>Sur Name</th>
                                    	<th>Other Names</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <td>Strip Rights</td>
                                    </tr></thead>
                                    <?php while($row_user = $result->fetch_assoc()) { ?>
                                    <tbody>
                                        <tr>
                                            <td><?php echo $row_user['user_Id']; ?></td>
                                            <td><?php echo $row_user['sur_Name']; ?></td>
                                        	<td><?php echo $row_user['first_Name']; ?></td>
                                        	<td><?php echo $row_user['email_Address']; ?></td>
                                            <td><?php echo $row_user['phone_No']; ?></td>
                                            <td>
                                                <form name="del" action="" method="post">
                                                    <input type="hidden" name="userID" value="<?php echo $row_user['user_Id']; ?>">
                                                    <button type="submit" class="btn btn-danger btn-fill" onclick='return confirm("Strip rights?")'>Strip</button></td>
                                                    </form>
                                        </tr>
                                       
                                    </tbody>
                                    <?php } ?>
                                </table>

                            </div>
                        </div>
                    </div>
					</div>
					</div>
	<?php include 'footer.php';?>