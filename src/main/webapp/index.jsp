
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Tareas"%>
<% ArrayList<Tareas> lista =(ArrayList<Tareas>) session.getAttribute("listtar"); 
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>!!!L I S T A --   D E ---    T A R E A S!!!! </h1>
 <a href="MainController?op=nuevo">Nuevo</a>
 <table border="1">
 <tr>
 <th>Id</th>
 <th>Tarea</th>
 <th>prioridad</th>
 <th>Completado</th>
 <th></th>
 <th></th>
 </tr>
 <%
 if(lista!= null ){
 for(Tareas item: lista){
 %>
 <tr>
 <td><%= item.getId()%></td>
 <td><%= item.getTarea()%></td>
 <td><%= item.getPrioridad()%></td>
 <td><%= item.getCompletado()%>
 
 <input type="checkbox" id="Concluido">
 <label for="concluido">Concluido</label>
 <input type="checkbox" id="Pendiente">
 <label for="concluido">pendiente</label></td>
 <td><a href="MainController?op=editar&id=<%= 
item.getId()%>">Editar</a></td>
 <td> <a href="MainController?op=eliminar&id=<%= item.getId()%>"
 onclick='return confirm("Esta seguro de eliminar el registro 
?");'>Eliminar</a></td>
 </tr>
 <%
 
 }
 }
 %>
 </table>
    </body>
</html>
