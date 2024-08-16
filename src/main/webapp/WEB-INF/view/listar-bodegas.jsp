<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Bodegas</title>
</head>
<body>
    <h1>Bodegas</h1>

    <!-- Botón para agregar una nueva bodega -->
    <button onclick="window.location.href='/camaleonweb-sabroso-bodega/bodegas/findOne?opcion=1';return false;">
        Agregar
    </button>

    <!-- Tabla para mostrar la lista de bodegas -->
    <table border="1">
        <thead>
            <tr>
                <th>ID Bodega</th>
                <th>Nombre</th>
                <th>Ubicación</th>
                <th>Capacidad</th>
                <th>ID Sucursal</th>
            </tr>
        </thead>
        <tbody>
            <!-- Itera sobre la lista de bodegas y muestra cada una en una fila de la tabla -->
            <c:forEach var="item" items="${Bodegas}">
                <tr>
                    <td>${item.idBodegas}</td>
                    <td>${item.nombre}</td>
                    <td>${item.ubicacion}</td>
                    <td>${item.capacidad}</td>
                    <td>${item.idSucursales}</td>
                    <td>
                        <!-- Botón para actualizar la bodega -->
                        <button onclick="window.location.href='/camaleonweb-sabroso-bodega/bodegas/findOne?idBodegas=${item.idBodegas}&opcion=1';return false;">
                            Actualizar
                        </button>
                        <!-- Botón para eliminar la bodega -->
                        <button onclick="window.location.href='/camaleonweb-sabroso-bodega/bodegas/findOne?idBodegas=${item.idBodegas}&opcion=2';return false;">
                            Eliminar
                        </button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
