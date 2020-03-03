<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado de multiplicar</title>
</head>
<body>
<h1>Resultado de multiplicar</h1>
<%int jnumero=Integer.parseInt(request.getParameter("numero"));%>
<h1>Tabla del <%=jnumero%></h1>
<table>
<%for(int i=1; i<=10;i++) {%>
	<tr>
	<td><%=jnumero %>x<%=i %>
	</td>
	<td><%=jnumero*i %>
	</td>
	</tr>
<%} %>
</table>
<a href="tablasMultiplicar.jsp">Regresar a volver a pedir el número</a>

</body>
</html>