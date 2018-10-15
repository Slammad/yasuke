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
                        <img src="assets/images/ping.png" style="height: 100px;" alt="">
                        
                    </div>
                    <form action="index.php" method="POST">
                        <div class="form-group has-icon"><i class="glyphicon glyphicon-user"></i>
                            <input type="text" name='ver' class="form-control form-control-lg"
                                   placeholder="FirstName">
                        </div>
                        <div class="form-group has-icon"><i class="icon-bank"></i>
                            <input type="text" name='ver' class="form-control form-control-lg"
                                   placeholder="LastName">
                        </div>
                        <div class="form-group has-icon"><i class="icon-bank"></i>
                            <input type="text" name='ver' class="form-control form-control-lg"
                                   placeholder="Email">
                        </div>
                        <div class="form-group has-icon"><i class="icon-bank"></i>
                            <input type="text" name='ver' class="form-control form-control-lg"
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
   
        if(isset($_POST['submit'])) {
       
        $sn=$_POST['ver'];
        
        echo $sn;
        }

  

?>
