<?php 
if (isset($_POST['guardar'])) 
{
	$HistCodigo=$_POST['HistCodigo'];
	$HistFechIni=$_POST['HistFechIni']; 
	$HistFechFin=$_POST['HistFechFin'];
	$CargoCodigo=$_POST['CargoCodigo'];
	$EmpCodigo=$_POST['EmpCodigo'];

	$mysql = new mysqli("localhost","root","","tbl");
	$link = $mysql -> query("INSERT INTO tblhistorialcargos(HistCodigo, HistFechIni, HistFechFin, CargoCodigo, EmpCodigo)VALUES('$HistCodigo','$HistFechIni','$HistFechFin','$CargoCodigo','$EmpCodigo')")or die(mysql_error());
	echo "<script> location.href='Index.html'</script>";
}
?>