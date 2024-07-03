<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
      <%@page import="model.TblProductocl3" %>

      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Listado de Productos</h1>

<h2 align="center">
<a href="FormRegistrarProducto.jsp">Registrar Producto</a>
</h2>

<table border="2" align="center">

<tr>
<td>Codigo</td>
<td>Nombre</td>
<td>Precio Venta</td>
<td>Precio Compra</td>
<td>Estado</td>
<td>Descripcion</td>
<td colspan="2" align="center">Acciones</td>
</tr>

<%
List<TblProductocl3> listadoproducto = (List<TblProductocl3>)request.getAttribute("listadoproductos");
if(listadoproducto !=null){
    for(TblProductocl3 pro:listadoproducto){
        %>
        <tr>
        <td><%=pro.getIdproductoscl3() %></td>
        <td><%=pro.getNombrecl3() %></td>
        <td><%=pro.getPrecioventacl3() %></td>
        <td><%=pro.getPreciocompcl3() %></td>
        <td><%=pro.getEstadocl3() %></td>
        <td><%=pro.getDescripcl3() %></td>
        <td><a href="ControladorProducto?accion=Eliminar&cod=<%=pro.getIdproductoscl3() %>">Eliminar</a></td>
        <td><a href="ControladorProducto?accion=Modificar&cod=<%=pro.getIdproductoscl3()%>">Actualizar</a></td>
        </tr>

        <% 
    }
    %>
    <%
}
%>

</table>
</body>
</html>