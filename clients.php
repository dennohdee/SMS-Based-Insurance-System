<?php include 'side.php';?>
<?php include 'top.php';
    include "conn.php";
    //fetch admins
    $user = $_SESSION['username'];
    $sql = "SELECT * FROM user_details WHERE  privilege='user'";
    $result = $conn->query($sql);
    
    //fetch all users
    $sql1 = "SELECT * FROM user_details WHERE  privilege='user'";
    $result1 = $conn->query($sql1);
    
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
                                <h4 class="title">Clients</h4>
                                <p class="category">List of all Users</p>
                                
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <tr><th>ID</th>
                                    	<th>Sur Name</th>
                                    	<th>Other Names</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <td>Actions</td>
                                    </tr></thead>
                                    <?php while($row_user = $result->fetch_assoc()) { ?>
                                    <tbody>
                                        <tr>
                                            <td><?php echo $row_user['user_Id']; ?></td>
                                            <td><?php echo ucfirst($row_user['sur_Name']); ?></td>
                                        	<td><?php echo ucfirst($row_user['first_Name']); ?></td>
                                        	<td><?php echo $row_user['email_Address']; ?></td>
                                            <td><?php echo $row_user['phone_No']; ?></td>
                                            <td>
                                                <form name="del" action="" method="post">
                                                    <input type="hidden" name="userID" value="<?php echo $row_user['user_Id']; ?>">
                                                    <button type="submit" class="btn btn-danger btn-fill">Edit</button></td>
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