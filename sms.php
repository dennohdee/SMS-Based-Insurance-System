<?php include 'side.php';?>
<?php include 'top.php';?>
<?php
    include "conn.php";
    
    //message requests
    $query = "SELECT * FROM message_in";
    $result = $conn->query($query);
?>
<div class="content">
<div class="container-fluid">
			    <nav class="pull-right">
                    
                            <a  style="color:#999" href="index.php">
                                <i class="fa fa-dashboard" ></i> >
                            </a>
                            <a  style="color:#666" href="">
                               SMS
                            </a>
                </nav>
            </div>
             <div class="container-fluid">
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Messages Received</h4>
                                <p class="category">Here is a list of incoming messages</p>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    
                                </div>
                                <div class="col-md-6">
                                <form name="add" action="" method="post">
                                    <div class="input-group">
                                    <input type="text" class="form-control" id="myInput" onkeyup="myFunction()" placeholder="Filter..">
                                    </div>
                                </div>
                            </div>

                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped" id="myTable">
                                    <thead>
                                        <tr><th>ID</th>
                                    	<th>Sender</th>
                                    	<th>Subject</th>
                                    	<th>Message</th>
                                    	<th>Time</th>
                                    </tr></thead>
                                    <tbody>
                                        <?php while($row_messagein = $result->fetch_assoc()){ ?>
                                        <tr>
                                        	<td><?php echo $row_messagein['m_id'];?></td>
                                        	<td><?php echo $row_messagein['sender'];?></td>
                                        	<td><?php echo ucwords($row_messagein['subject']);?></td>
                                        	<td><?php echo ucwords($row_messagein['message']);?></td>
                                        	<td><?php echo $row_messagein['time'];?></td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
					</div>
                    </div>
                    <script>
function myFunction() {
  // Declare variables 
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}
</script>
	<?php include 'footer.php';?>