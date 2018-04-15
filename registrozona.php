<?php 
if (isset($_POST['guardar'])) 
{
	$ZonaCodigo=$_POST['ZonaCodigo'];
	$ZonaCuidad=$_POST['ZonaCuidad']; 
	$ZonaDepartamento=$_POST['ZonaDepartamento'];

	$mysql = new mysqli("localhost","root","","tbl");
	$link = $mysql -> query("INSERT INTO tblzona(ZonaCodigo, ZonaCuidad, ZonaDepartamento)VALUES('$ZonaCodigo','$ZonaCuidad','$ZonaDepartamento')")or die(mysql_error());
	echo "<script> location.href='registrodepartamento.html'</script>";
}
?>