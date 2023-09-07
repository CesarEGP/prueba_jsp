<%@page import="hola_jsp.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="hola_jsp.DAOUsuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://cdn.tailwindcss.com"></script>
<title>Hola JSP</title>

</head>
<body class="flex flex-col">
<%
int numeroFilas = 5;
//out.println("<b>Imprimiendo</b> " + numeroFilas);
%>
<table class="border-double border-2 border-sky-500 text-center flex mx-auto p-2">
<% for (int i = 1; i <= numeroFilas; i++) { %>
<tr>
	<td class="border-double border-2 border-sky-500 text-4xl">
		<%=i %>
	</td>
	<td class="border-double border-2 border-sky-500 text-4xl">
		Cesar Garcia Commit
	</td>
	<td class="border-double border-2 border-sky-500 text-4xl">
		<% if (i<10) {%>
		0
		<%} %>
		<%=i %>
	</td>
</tr>
<% } %>
</table>
<br/><br/>
<%
DAOUsuario dao = new DAOUsuario();
List<Usuario> lst = dao.consultarTodos();
%>
<table class="border-double border-2 border-sky-500 text-center flex mx-auto p-2">
<%for(Usuario u:lst){ %>
<tr class="border-double border-2 border-sky-500 text-4xl">
	<td class="border-double border-2 border-sky-500 text-4xl">
		<%=u.getId() %>
	</td>
	<td class="border-double border-2 border-sky-500">
		<%=u.getNombre() %>
	</td>
</tr>
<%} %>
</table>
</body>
</html>