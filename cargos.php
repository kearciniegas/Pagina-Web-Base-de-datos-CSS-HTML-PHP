<?php 
if (isset($_POST['guardar'])) 
{
	$CargoCodigo=$_POST['CargoCodigo'];
	$CarNombre=$_POST['CarNombre']; 
	$CarMaxSalario=$_POST['CarMaxSalario'];
	$CarMinSalario=$_POST['CarMinSalario'];


	$mysql = new mysqli("localhost","root","","tbl");
	$link = $mysql -> query("INSERT INTO tblcargos(CargoCodigo, CarNombre, CarMaxSalario, CarMinSalario)VALUES('$CargoCodigo','$CarNombre','$CarMaxSalario','$CarMinSalario')")or die(mysql_error());
	echo "<script> location.href='Index.html'</script>";
}
?>