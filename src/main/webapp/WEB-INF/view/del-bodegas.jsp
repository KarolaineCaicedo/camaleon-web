<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Bodega</title>
</head>
<body>
<h1> Bodegas</h1>

         <form action="del" method="get">
         
               <input type="hidden" id="idBodegas" name="idBodegas" value="${bodegas.idBodegas}" />
               
               <strong>¿Deseas Borrar este dato?</strong>
               <br/>
               <button type="submit">BORRAR</button>
               
               <button onclick="window.location.href='/camaleonweb-sabroso-bodega/bodegas/findAll';return false ;">
               CANCELAR
               </button>
         </form>
        

</body>
</html>
