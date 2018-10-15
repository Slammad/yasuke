<?php
    include 'admin/sign.php';
?>


<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="assets/img/basic/favicon.ico" type="image/x-icon">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <title>Join Yasuke trade room</title>
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/app.css">
 
</head>
<body class="light">
<!-- Pre loader -->

<div id="app">
<main>
    <div id="primary" class="p-t-b-100 height-full">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mx-md-auto paper-card">
                    <div class="text-center">
                        <img src="assets/images/ping.png" style="height: 150px;" alt="">
                        
                    </div>
                    <form action="signup.php" method="POST">
                        <div class="form-group has-icon"><i class="fa fa-user"></i>
                            <input type="text" name='firstname' class="form-control form-control-lg"
                                   placeholder="FirstName">
                        </div>
                        <div class="form-group has-icon"><i class="fa fa-id-card"></i>
                            <input type="text" name='lastname' class="form-control form-control-lg"
                                   placeholder="LastName">
                        </div>
                        <div class="form-group has-icon"><i class="fa fa-envelope"></i>
                            <input type="text" name='email' class="form-control form-control-lg"
                                   placeholder="Email">
                        </div>
                        <div class="form-group has-icon"><i class="fa fa-phone"></i>
                            <input type="text" name='phone' class="form-control form-control-lg"
                                   placeholder="Phone">
                        </div>
                       
                        <input type="submit"  name="submit" class="btn btn-primary btn-lg btn-block" value="Sign Up">
                       
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- #primary -->
</main>
<div class="control-sidebar-bg shadow white fixed"></div>
</div>
<!--/#app -->

</body>
</html>

<?php
   $server = 'localhost';
   $username = 'root';
   $password = '3IMZJZIyGd54';
   $db='cms';
   $conn = mysqli_connect($server, $username, $password,$db) or die("Failed to connect");

        if(isset($_POST['submit'])) {
            $first = $_POST['firstname'];
            $last = $_POST['lastname'];
            $email = $_POST['email'];
            $phone = $_POST['phone'];


        $query = "INSERT INTO `reg_users`(`id`,`firstname`,`lastname`,`email`,`phone`) VALUES(NULL,'$first','$last','$email','$phone')";

        $run =mysqli_query($conn,$query);
        
        if($run){
            echo "Success";
        }else{
            echo "Failed";
        }
        
        
        }

  

?>
