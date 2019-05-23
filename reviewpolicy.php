<?php include 'side.php';?>
<?php include 'top.php';
include "conn.php";

     //fetch policy to edit
     if(isset($_GET['pid']))
     { $pid = $_GET['pid'];
        $sql1 = "SELECT * FROM insurance_policies WHERE policy_Id = '$pid'";
        $query1 = mysqli_query($conn,$sql1);
        $row_policy = mysqli_fetch_assoc($query1);
     }
     else
     {
        
     }
     //update policy
     
        
        if(isset($_REQUEST['policy']))
        { 
            $policy_Id = stripslashes($_REQUEST['policy_Id']);
        $policy = stripslashes($_REQUEST['policy']);
        $price = stripslashes($_REQUEST['price']);
        $toc = stripslashes($_REQUEST['toc']);
             $query4 = "UPDATE `insurance_policies` SET `policy` = '$policy', `price` = '$price', `toc` = '$toc' WHERE `policy_Id` = '$policy_Id'";
             $result4 = mysqli_query($conn, $query4);
             if($result4){
                echo "success";
             }else{ echo "failed";}
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
                                
                            <h4 class="title">Review Policy ID: <?php echo $row_policy['policy_Id']; ?></h4>
                                <p class="category">Make changes here</p>
                            </div>
                            <div class="content">
                                <form name="up" action="" method="post">
                                <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Policy</label>
                                                <input type="text" name="policy"class="form-control" placeholder="Policy" value="<?php echo ucfirst($row_policy['policy']); ?>">
                                                <input type="hidden" name="policy_Id"value="<?php $row_policy['policy_Id']; ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Payable Amount</label>
                                                <input type="text" class="form-control" name="price" placeholder="Name" value="<?php echo ucfirst($row_policy['price']); ?>">
                                            </div>
                                        </div>
    </div>
                                    
              
                <textarea class="textarea" name="toc" placeholder="Place some text here"
                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo ucfirst($row_policy['toc']); ?></textarea>
               <button type="submit" name="submit" class="btn btn-info btn-fill pull-right">Update Policy</button>
            </form>
            </div>
           </div>
                            </div>
                            
                        </div>
                    </div>
					</div>
					</div>
	<?php include 'footer.php';?>
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