<?php
$con = mysqli_connect("localhost","root","","fashionshop1");
if (!$con)
  {
  die('Could not connect: ' );
  };

$con -> set_charset("utf8");

?>