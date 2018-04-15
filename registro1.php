<?php 
if (isset($_POST['guardar'])) 
{
	$EmpCodigo=$_POST['EmpCodigo'];
	$EmpNombre=$_POST['EmpNombre']; 
	$EmpApellido=$_POST['EmpApellido'];
	$EmpEmail=$_POST['EmpEmail'];
	$EmpFechaNac=$_POST['EmpFechaNac'];
	$EmpSalario=$_POST['EmpSalario'];
	$CodigoJefe=$_POST['CodigoJefe'];
	$DepId=$_POST['DepId'];


	$mysql = new mysqli("localhost","root","","tbl");
	$link = $mysql -> query("INSERT INTO tblempleados(EmpCodigo, EmpNombre, EmpApellido, EmpEmail, EmpFechaNac, EmpSalario, CodigoJefe, DepId)VALUES('$EmpCodigo','$EmpNombre','$EmpApellido','$EmpEmail','$EmpFechaNac','$EmpSalario','$CodigoJefe','$DepId')")or die(mysql_error());
	echo "<script> location.href='index.html'</script>";
}
?>