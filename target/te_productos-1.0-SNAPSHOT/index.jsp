<%@page import="com.emergentes.modelo.Producto"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listaprod");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>SEGUNDO PARCIAL TEM-742</h3>
        <p>Nombre: Wilmer Rodrigo Perca Choque <br><!-- comment -->
        Carnet: 12636882
        </p>
        <h1>Productos</h1>
        <a href="MainControler?op=nuevo">Nuevo Producto</a>
        <table border='1'>

            <tr>
                <th>id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                    for (Producto item : lista) {
            %> 
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getDescripcion()%></td>
                <td><%= item.getCantidad()%></td>
                <td><%= item.getPrecio()%></td>
                <td><%= item.getCategoria()%></td>
                <td><a href="MainControler?op=editar&id=<%= item.getId()%>">
                        modificar</a></td>
                <td><a href="MainControler?op=eliminar&id=<%= item.getId()%>" 
                       onclick='return confirm("estas seguro de eliminar el registro");'> eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
