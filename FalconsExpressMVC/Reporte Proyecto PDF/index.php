<?php
	include 'plantilla.php';
	require 'conexion.php';
	
	$query = "SELECT * from Usuario";
	$resultado = $mysqli->query($query);
	
	$pdf = new PDF();
	$pdf->AliasNbPages();
	$pdf->AddPage();
	
	$pdf->SetFillColor(232,232,232);
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(10,6,'ID',1,0,'C',1);
	$pdf->Cell(40,6,'Nombre',1,0,'C',1);
	$pdf->Cell(30,6,'Apellido',1,0,'C',1);
	$pdf->Cell(50,6,'Correo',1,0,'C',1);
	$pdf->Cell(30,6,'Password',1,1,'C',1);

	$pdf->SetFont('Arial','',10);
	
	while($row = $resultado->fetch_assoc())
	{
		$pdf->Cell(10,6,utf8_decode($row['idUsuario']),1,0,'C', 0);
		$pdf->Cell(40,6,utf8_decode($row['nombreUsuario']),1,0,'C', 0);
		$pdf->Cell(30,6,utf8_decode($row['apellidoUsuario']),1,0,'C', 0);
		$pdf->Cell(50,6,utf8_decode($row['correoUsuario']),1,0,'C', 0);
		$pdf->Cell(30,6,utf8_decode($row['passwordUsuario']),1,1,'C', 0);
	}
	$pdf->Output();
?>