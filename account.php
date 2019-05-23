<?php include 'side.php';?>
<?php include 'top.php';?>
<?php 
  include "conn.php";
    $user = $_SESSION['username'];
    $sql = "SELECT * FROM user_details WHERE  email_Address='$user'";
    $query1 = mysqli_query($conn,$sql);
    $row_user = mysqli_fetch_assoc($query1);
?>
<div class="content">
             <div class="container-fluid">
			    <nav class="pull-right">
                    
                            <a  style="color:#999" href="index.php">
                                <i class="fa fa-dashboard" ></i> >
                            </a>
                            <a  style="color:#666" href="Account.php">
                                Account
                            </a>
                </nav>
            </div>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Edit My Profile</h4>
                            </div>
                            <div class="content">
                                <form>
                                    <div class="form-group">
                                                <label>Email</label>
                                                <input type="text" class="form-control" disabled placeholder="Email Address" value="<?php echo $row_user['email_Address']; ?>">
                                            </div>
                                        
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Sur Name</label>
                                                <input type="text" class="form-control" placeholder="Sur Name" value="<?php echo $row_user['sur_Name']; ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Other Name</label>
                                                <input type="text" class="form-control" placeholder="Other Name" value="<?php echo $row_user['first_Name']; ?>">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <input type="text" class="form-control" placeholder="Home Address" value="<?php echo $row_user['address']; ?>">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>PAssword</label>
                                                <input type="password" class="form-control" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Confirm Password</label>
                                                <input type="password" class="form-control" placeholder="Confirm Password">
                                            </div>
                                        </div>
                                    </div>

                                  

                                    <button type="submit" class="btn btn-info btn-fill pull-right">Update Profile</button>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="assets/img/cop.jpg" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                     <a href="#">
                                    <img class="avatar border-gray" src="assets/img/faces/face-0.jpg" alt="..."/>

                                      <h4 class="title"><?php echo $row_user['sur_Name']; echo " "; echo $row_user['first_Name']; ?><br />
                                         <small><?php echo $row_user['email_Address']; ?></small>
                                      </h4>
                                    </a>
                                </div>
                                <p class="description text-center"> <?php echo $row_user['address']; ?> <br>
                                <?php echo $row_user['privilege']; ?> <br>
                                <?php if($row_user['status'] == "0"){echo '<span style="color:red;">Inactive</span>';}else{echo '<span style="color:green;">Active</span>';} ?>
                                </p>
                            </div>
                           
                        </div>
                    </div>

                </div>
            </div>
        </div>
		
		<?php include 'footer.php';?>