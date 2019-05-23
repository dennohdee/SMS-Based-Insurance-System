<?php include 'side.php';?>
<?php include 'top.php';
include "conn.php";
     //fetch all users
     $sql1 = "SELECT * FROM insurance_policies";
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
                                <h4 class="title">Policies Table</h4>
                                <p class="category">Here is a list of policies</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <tr><th>ID</th>
                                    	<th>Policy Name</th>
                                    	<th>Price</th>
                                    	<th>T & C</th>
                                    </tr></thead>
                                   <?php while($row_policies = $result1->fetch_assoc()) { ?>
                                    <tbody>
                                        <tr> <?php $p = $row_policies['policy_Id']; ?>
                                            <td><form action='reviewpolicy.php?pid="<?php $p; ?>' method="get">
                                            <input type="hidden" name="pid" value="<?php echo ucfirst($row_policies['policy_Id']); ?>">
                                            <button class="btn btn-default" type="submit" ><?php echo ucfirst($row_policies['policy_Id']); ?></button></td>
                                        </form>
                                        	<td><?php echo ucfirst($row_policies['policy']); ?></td>
                                        	<td><?php echo $row_policies['price']; ?></td>
                                            <td>
                                                <?php
                                             if(isset($_GET['id']))
                                             { echo ucfirst($row_policies['toc']);
                                               echo '<a href="policies.php">  Close</a>'; }
                                              else
                                             {echo substr($row_policies['toc'],0, 30) .'<a href="?id='.$row_policies['policy_Id'].'?toc='.$row_policies['toc'].'">...read more</a>';} ?></td>
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