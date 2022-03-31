<?php 
       session_start();
      
    ?> 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 4 Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  
</head>
<body>

<div class="container center-div shadow">
 <div class="heading text-cenetr text-uppercase text-black mb-5">
      <?php echo  $_SESSION["designation"];?> </div>
     <a href="logout.php" class="btn btn-danger mt-5"> Logout</a>
        <h1> This is Our small Dashboad to display data only admin</h1>
        <!-- <form method="post" action="signup.php">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name" name="name">
               
            </div>
            <div class="form-group">
                <label for="contact_number">Contact Number</label>
                <input type="text" class="form-control" id="contact_number" aria-describedby="emailHelp" placeholder="Enter Number" name="contact_number">
               
            </div>
            <div class="form-group">
            <label for="exampleFormControlTextarea1">Address</label>
            <textarea class="form-control" id="address" name="address" rows="3"></textarea>

            </div>
            <div class="form-group">
            <select class="form-control" name="designation">
              <option value="admin">Admin</option>
              <option value="user">User</option>
            </select>

            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter Number" name="email">
               
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" aria-describedby="emailHelp" placeholder="Enter Number" name="password">
               
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input type="password" class="form-control" id="confirm_password" aria-describedby="emailHelp" placeholder="Enter password" name="confirm_password">
               
            </div>
          
            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
        </form> -->

<div class="row" style="margin-left:-27px;">
<div class="col-sm-6 mt-5">
             <table id="example1" class="table table-bordered table-striped" >
                <thead>
                <tr style="background-color: orange; color: #fff">
                  <th>Sr.No</th>
                  <th>Name</th>
                  <th>Contact_number</th>
                  <th>Address</th>
                  <th>Designation</th>
                  <th>Email</th>
                  <th>password</th>
                  <th>confirm_password</th>
                
                 
                 
                </tr>
                </thead>
                <tbody>
                  <?php
                  $sr=1;
                  $connect=mysqli_connect("localhost","root","" ,"Customization_db");
                  $res=mysqli_query($connect,"select * from signup ");
                  while($row=mysqli_fetch_row($res))
                  {
                    $cat=mysqli_query($connect,"select * from signup where id='".$row[0]."'");
                    $cat1=mysqli_fetch_row($cat);
                   echo
                   '<tr>
                      <td>'.$sr.'</td>
                      <td>'.$cat1[1].'</td>
                      <td>'.$cat1[2].'</td>
                      <td>'.$cat1[3].'</td>
                      <td>'.$cat1[4].'</td>
                      <td>'.$cat1[5].'</td>
                      <td>'.$cat1[6].'</td>
                      <td>'.$cat1[7].'</td>
                      
                   
                  
                      
                  </tr>';
                  $sr++;
                  }
               
                ?>
                
                </tbody>
                <!-- <tfoot>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
                </tr>
                </tfoot> -->
              </table>
</div>

</div>
   <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

