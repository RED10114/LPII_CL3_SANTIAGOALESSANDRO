<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Actualizar Producto</h1>

<form  method="post" action="ControladorProducto">


<%
//int cod;
 //TblCliente codigo=(TblCliente)request.getAttribute("codigo");
 String cod=request.getAttribute("codigo").toString();
 String nom=(request.getAttribute("nombre")!=null)?request.getAttribute("nombre").toString():"";
 String precioventa=(request.getAttribute("precio venta")!=null)?request.getAttribute("precio venta").toString():"";
 String preciocomp=(request.getAttribute("precio compra")!=null)?request.getAttribute("precio compra").toString():"";
 String estado=(request.getAttribute("estado")!=null)?request.getAttribute("estado").toString():"";
 String desc=(request.getAttribute("descripcion")!=null)?request.getAttribute("descripcion").toString():"";
%>

<table align="center"  borde="2">
<input type="hidden" name="codigo"  value="<%=cod%>">
<tr>
<td>Nombre</td>
<td>
<input type="text" name="nombre" value="<%=nom%>">
</td>
</tr>
<tr>
<td>Precio de Venta</td>
<td><input type="text" name="precioventa" value="<%=precioventa%>"></td>
</tr>
<tr>
<td>Precio de Compra</td>
<td><input type="text" name="preciocompra" value="<%=preciocomp%>"></td>
</tr>
<tr>
<td>Estado</td>
<td><input type="text" name="estado" value="<%=estado%>"></td>
</tr>
<tr>
<td>Descripcion</td>
<td><input type="text" name="descripcion" value="<%=desc%>"></td>
</tr>

<tr>
<td colspan="2" align="center"><input type="submit" value="Actualizar Producto"></td>
</tr>

</table>



</form>
</body>
</html>