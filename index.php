<?php include 'side.php';
include 'top.php';
include 'conn.php';
$query = "SELECT insurance_policies.policy_Id,insurance_policies.policy,insurance_policies.price,count(subscriptions.user_Id) as user,subscriptions.time,subscriptions.id FROM `subscriptions`,`insurance_policies` WHERE insurance_policies.policy_Id=subscriptions.policy_Id";
$result = mysqli_query($conn, $query);
$chart_data = '';
while($row = mysqli_fetch_array($result))
{
 $chart_data .= "{ time:'".$row["time"]."', policy:".$row["policy_Id"].", user:".$row["user"].", id:".$row["id"]."}, ";
}
$chart_data = substr($chart_data, 0, -2);
?>
 <div class="content">
  <div class="container-fluid">
                <nav class="pull-right">
                            <a  style="color:#999" href="index.php">
                                <i class="fa fa-dashboard" ></i>
                            </a>
                </nav>
            </div>
            <div class="container-fluid">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Subcriptions Summary</h4>
                                <p class="category">24 Hours performance</p>
                            </div>
                            <div class="content">
                            


                            <div id="chart"></div>

                                <div class="footer">
                                    <div class="legend">
                                        <i class="fa fa-circle text-info"></i> Open
                                        <i class="fa fa-circle text-danger"></i> Click
                                        <i class="fa fa-circle text-warning"></i> Click Second Time
                                    </div>
                                    <hr>
                                    <div class="stats">
                                        <i class="fa fa-history"></i> Updated 3 minutes ago
                                    </div>
                                </div>
                            </div>
                          </div>

    </div>
	</div>
	<script>
Morris.Bar({
 element : 'chart',
 data:[<?php echo $chart_data; ?>],
 xkey:'policy',
 ykeys:['user'],
 labels:['Users Subscribed'],
 hideHover:'auto',
 stacked:true
});
</script>
	<?php include 'footer.php';?>