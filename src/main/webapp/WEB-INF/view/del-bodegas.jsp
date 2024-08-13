<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Bodega</title>
</head>
<body>
<h1>Eliminar Bodega</h1>

<form action="del" method="get">

    <!-- Verifica que el objeto "Bodega" est� presente antes de intentar acceder a sus atributos -->
    <input type="hidden" id="idBodegas" name="idBodegas" value="${Bodega.idBodegas}" />

    <strong>�Deseas Borrar esta Bodega?</strong>
    <br/>
    
    <!-- Bot�n para confirmar la eliminaci�n -->
    <button type="submit">BORRAR</button>
    
    <!-- Bot�n para cancelar y redirigir a la lista de bodegas -->
    <button onclick="window.location.href='/camaleonweb-sabroso-bodega/bodegas/findAll'; return false;">
        CANCELAR
    </button>
</form>

</body>
</html>
