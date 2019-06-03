<?php
session_start();
include 'functions/actions.php';
$obj = new DataOperations();

$error = $success=$username="";
$_SESSION['username']='';

if(isset($_POST['login']))
{
$username = $obj->con->real_escape_string(htmlentities($_POST['username']));
$password = $obj->con->real_escape_string(htmlentities($_POST['password']));

$where = array("username"=>$username,"password"=>$password);
$exist = $obj->fetch_records("admin",$where);
if($exist)
{
 $_SESSION['username'] = $username;
 header('location: index.php');
}
else
{
  $error = "Wrong username or password!";
}
}
?>


<!DOCTYPE html>
<html>
<head>
	<title>Signin</title>
	<link rel="stylesheet" type="text/css" href="plugins/login.css">
  <?php include 'plugins/styles.php';?>
</head>
<body>
  <div class="container">
  <br><br><br>
    <div class="row">
    <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="account-wall" >
                <form class="form-signin" method="post" action="<?php echo htmlentities($_SERVER['PHP_SELF'])?>">
                      <!--display errors here-->
                      <?php
                              if($error)
                              {
                                $obj->errorDisplay($error);
                              }
                              if($success)
                              {
                                $obj->successDisplay($success);
                              }
                           ?>
                <input type="text" class="form-control" placeholder="Username" name="username" value="<?=$username;?>"  required autofocus>
                <input type="password" class="form-control" placeholder="Password" name="password" required>
                <button class="btn btn-lg  btn-block" style="background-color:#C74E3B; color:white;" type="submit" name="login">
                    Sign in</button>
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label>
                <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form>
                <br><br>
            </div>
            <a href="#" class="text-center new-account">Create an account </a>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
</body>
</html>