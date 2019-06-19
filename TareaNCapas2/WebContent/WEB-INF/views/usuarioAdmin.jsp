<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<br>
	&nbsp&nbsp&nbsp&nbsp<input type="button" class="btn btn-info btn-lg" value="SALIR" onclick="location.href='${pageContext.request.contextPath}/'"/>
	<h1 class="text-center text-white">BIENVENIDO USUARIO ADMINISTRADOR</h1><br><br>
	<table class="table table-dark">
		<tr>
			<th>Nombre sucursal</th>
			<th>Registrar sucursal</th>
			<th>Ver perfil</th>
			<th>Editar</th>
			<th>Eliminar</th>
		</tr>
		
			<c:forEach items="${sucursales}" var="sucursal">
				<tr>				
					<td>${sucursal.nombre}</td>
					
						<td><input type="button" class="btn btn-outline-light" value="Registrar sucursal" onclick="location.href='${pageContext.request.contextPath}/registrarSucursal'"></td>
					    <td><input type="button" class="btn btn-outline-light" value="Ver perfil sucursal"></td>
						<td><input type="button" class="btn btn-outline-light" value="Editar sucursal"></td>
						<td><input type="button" class="btn btn-outline-light" value="Eliminar sucursal"></td>
				</tr>	
			</c:forEach>
	</table>
</body>
</html>