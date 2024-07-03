<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Formulario de logueo</h1>

<form action="login" method="post">
<table align="center" border="2">

<tr>
<td><label for="usuario">Usuario:</label></td>
<td><input type="text" id="usuario" name="usuario"></td>
</tr>

<tr>
<td><label for="password">Contraseña:</label></td>
<td><input type="password" id="password" name="password"></td>
</tr>

<tr>
<td colspan="2"  align="center"><input type="submit" value="Login"></td>
</tr>

</table>
</form>
</body>
</html>