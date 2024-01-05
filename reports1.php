<?php
$conn=mysql_connect("localhost","root","");
mysql_select_db("hotel");
$query1="select * from testcontratti";
$result=mysql_query($query1, $conn);
$info=mysql_fetch_array($result,MYSQL_ASSOC);
$totalrows=mysql_num_rows($result);
echo $totalrows;
$perpagerows=30;
$firstrow=0;
$lastrow=29;
$totalpages=round(($totalrows/$perpagerows),0);
echo $totalpages;






?>