<?php
$con = mysqli_connect("localhost","root","123456","fashionshop");
if (!$con)
  {
  die('Could not connect: ' );
  };

$con -> set_charset("utf8");

?>