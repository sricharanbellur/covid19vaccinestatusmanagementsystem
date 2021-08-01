
<?php 
session_start();
if(!$_SESSION['auth'])
{
    header('location:login1.php');
}
?>
<H1>Welcome you are Authenticated </h1>
<marquee><a href="logout.php">Click here to logout</a><marquee>