<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Bodegas</h1>
		<form action="add" method="post">
		
		<input type="hidden" id="idBodegas" name="idBodegas" value="${bodegas.idBodegas}" />
		<br/>
		Nombre
		<input type="text" id="nombre" name="nombre" value="${bodegas.nombre}"/>
		<br/>
		Ubicación
		<input type="text" id="ubicacion" name="ubicacion" value="${bodegas.ubicacion}" />
		<br/>
		Capacidad
		<input type="number" id="capacidad" name="capacidad" value="${bodegas.capacidad}" />
		<br/>
		IdSucursales
		<input type="number" id="idSucursales" name="idSucursales" value="${bodegas.idSucursales}" />
		<br/>
		
		
		 <button type="submit">Guardar</button>
               
         <button onclick="window.location.href='/camaleonweb-sabroso-bodega/bodegas/findAll';return false ;">
         Cancelar
         </button>
		
		</form>

</body>
</html>



