<?php 

ini_set('max_execution_time', 300);


$show_latih = mysqli_query($DBcon, "SELECT * FROM users");


?>
<thead>
    <tr>
      <th>Username</th>
      <th>Password</th>
      <th>Role</th>      
      <th>Action</th>
    </tr>
  </thead>
  <tfoot>
    <tr>
      <th>username</th>
      <th>Password</th>
      <th>Role</th>      
      <th>Action</th>
    </tr>
  </tfoot>
  <tbody id="data-content">
<?php 

ini_set('max_execution_time', 300);

//`text_twitter`
  

//$tweet = $_POST["text"];

//end foreach string1
  
  foreach ($show_latih as $result12) {
  ?>
    <tr>
      <td><?php echo $result12["username"];?></td>
      <td><?php echo md5($result12["password"]);?></td>
      <td><?php echo $result12["role"];?></td>
      <td><a href="index.php?halaman=data-user&act=edit&id=<?php echo $result12['username'];?>"><i class="fa fa-edit fa-fw"></i></a> | <a href="index.php?halaman=data-user&act=del&id=<?php echo $result12['username'];?>"><i class="fa fa-trash fa-fw"></i></a> </td>
    </tr>
    <?php
  }

?>

</tbody>