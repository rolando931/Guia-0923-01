<!DOCTYPE html>
<html lang ="es">
	<head>
		<litle>Listado de unidades</litle>
		<meta charset="UFT-8">
		<meta name="viewport" content ="width=device-width, initial-scale=1.0, maximun-scale=1.0">
	</head>
	<body>
		<header>
			<h1>Listado de unidades</h1>
		</header>
		<section>
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
				<th>ID:</th>
				<th>Nombre:</th>
				<th>Abreviado:</th>
				</tr>
				<?php foreach ($datos as $fila){ ?>
				<tr>
					<td><?php echo $fila['id_unidad_medida'] ?></td>
					<td><?php echo $fila['descripcion']?></td>
					<td><?php echo $fila['abreviado'] ?></td>
				</tr>
				<?php } ?> 
			</table>
		</section>
		<footer>
			&copy; ---
		</footer>
	</body>
	</html>
