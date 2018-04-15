<?php 
if (isset($_POST['guardar'])) 
{
	$HorId=$_POST['HorId'];
	$EmpCodigo=$_POST['EmpCodigo']; 
	$HorFech=$_POST['HorFech'];
	$HorNum=$_POST['HorNum'];

	$mysql = new mysqli("localhost","root","","tbl");
	$link = $mysql -> query("INSERT INTO tblhorasextras(HorId, EmpCodigo, HorFech, HorNum)VALUES('$HorId','$EmpCodigo','$HorFech','$HorNum')")or die(mysql_error());
	echo "<script> location.href='Index.html'</script>";
}
?>