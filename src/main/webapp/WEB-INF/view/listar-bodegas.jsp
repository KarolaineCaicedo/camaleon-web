<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

				  <h1> Bodegas </h1>
        
        <button onclick="window.location.href='/camaleonweb-sabroso-bodega/bodegas/findOne?opcion=1';return false ;">
         Agregar
        </button>
        
        <table>
           <thead>
                <tr>
                    <th> idBodegas</th>
                    <th> nombre</th>
                    <th> ubicacion</th>
                    <th> capacidad</th> 
                    <th> idSucursales</th>

               
               </tr>
        </thead>
        <tbody>
           <c:forEach var="item" items="${Bodegas}">
                <tr> 
                   <td> ${item.idBodegas}</td>
                   <td> ${item.nombre}</td> 
                   <td> ${item.ubicacion}</td>
                   <td> ${item.capacidad}</td>
                   <td> ${item.idSucursales}</td>
                   <td> 
                          <button onclick="window.location.href='/camaleonweb-sabroso-bodega/bodegas/findOne?idBodegas=${item.idBodegas}&opcion=1';return false">
                          Actualizar
                          </button>
                          <button onclick="window.location.href='/camaleonweb-sabroso-bodega/bodegas/findOne?idBodegas=${item.idBodegas}&opcion=2';return false">
                          Eliminar
                          </button>             
                    </td>
               
               </tr>
            </c:forEach>
          </tbody>
        </table>

</body>
</html>