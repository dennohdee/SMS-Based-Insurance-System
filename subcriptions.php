<?php include 'side.php';?>
<?php include 'top.php';
include "conn.php";
echo '<meta http-equiv="refresh" content="3; url=">';
     //fetch Subscriptions
     $sql1 = "SELECT insurance_policies.policy,insurance_policies.price,subscriptions.id,subscriptions.time,user_details.sur_Name,user_details.id_No,user_details.phone_No FROM subscriptions,insurance_policies,user_details WHERE insurance_policies.policy_Id=subscriptions.policy_Id AND subscriptions.user_Id=user_details.user_Id order by subscriptions.id DESC";
     $result1 = $conn->query($sql1);
     //echo full toc
     if(isset($_GET['id']))
     { $id = $_GET['id'];
        $sql1 = "SELECT * FROM insurance_policies WHERE policy_Id = '$id'";
        $result1 = $conn->query($sql1);
     }
?>
<div class="content">
<div class="container-fluid">
			    <nav class="pull-right">
                    
                            <a  style="color:#999" href="index.php">
                                <i class="fa fa-dashboard" ></i> >
                            </a>
                            <a  style="color:#666" href="policies.php">
                               Policies
                            </a>
                </nav>
            </div>
             <div class="container-fluid">
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Active Subscriptions</h4>
                                <p class="category">Here is a list of subscriptions</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <tr><th>ID</th>
                                        <th>Policy Name</th>
                                        <th>Price</th>
                                        <th>Client Surname</th>
                                        <th>ID No.</th>
                                        <th>Time</th>
                                        <th>Phone No.</th>
                                    </tr></thead>
                                   <?php while($row_policies = $result1->fetch_assoc()) { ?>
                                    <tbody>
                                        <tr> <?php $p = $row_policies['id']; ?>
                                            <td><form action='#?pid="<?php $p; ?>' method="get">
                                            <input type="hidden" name="pid" value="<?php echo ucfirst($row_policies['policy_Id']); ?>">
                                            <button class="btn btn-default" type="submit" ><?php echo ucfirst($row_policies['id']); ?></button></td>
                                        </form>
                                        	<td><?php echo ucfirst($row_policies['policy']); ?></td>
                                        	<td><?php echo $row_policies['price']; ?></td>
                                            <td><?php echo ucfirst($row_policies['sur_Name']); ?></td>
                                            <td><?php echo ucfirst($row_policies['id_No']); ?></td>
                                            <td><?php echo ucfirst($row_policies['time']); ?></td>
                                            <td><?php echo ucfirst($row_policies['phone_No']); ?></td>
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