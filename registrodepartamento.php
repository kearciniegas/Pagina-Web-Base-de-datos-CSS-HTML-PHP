<?php 
if (isset($_POST['guardar'])) 
{
	$DepId=$_POST['DepId'];
	$DepNombre=$_POST['DepNombre']; 
	$ZonaCodigo=$_POST['ZonaCodigo'];

	$mysql = new mysqli("localhost","root","","tbl");
	$link = $mysql -> query("INSERT INTO tbldepartamento(DepId, DepNombre, ZonaCodigo)VALUES('$DepId','$DepNombre','$ZonaCodigo')")or die(mysql_error());
	echo "<script> location.href='index.html'</script>";
}
?>