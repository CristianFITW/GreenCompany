<%@page import="java.util.List"%>
<%@ page import="ServletsMAPA.Problematica" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String nombreAlcaldia = (String) request.getAttribute("nombreAlcaldia");
    List<Problematica> problematicas = (List<Problematica>) request.getAttribute("problematicas");

    Integer pagina = (Integer) request.getAttribute("pagina");
    Integer totalPaginas = (Integer) request.getAttribute("totalPaginas");

    if (pagina == null || totalPaginas == null) {
        pagina = 1;  // Valor predeterminado si es nulo
        totalPaginas = 1;  // Valor predeterminado si es nulo
    }
%>
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        if(session.getAttribute("txtUsuario") == null && session.getAttribute("nombre") == null){
            response.sendRedirect("index.jsp");
        }
        %>
<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" href="css/alcaldia.css" type="text/css" media="all">
    <meta charset="UTF-8">
    <title><%= nombreAlcaldia %> - Problemáticas</title>
</head>
<body>
        <style>html,
        body {
            height: 100%;
        }
       
        body {
            margin: 0;
            background: linear-gradient(45deg, #49a09d, #5f2c82);
            font-family: sans-serif;
            font-weight: 100;
        }
       
        .galactic-center {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
       
        .celestial-table {
            width: 800px;
            border-collapse: collapse;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }
       
        .star-header,
        .lunar-cell {
            padding: 15px;
            background-color: rgba(255,255,255,0.2);
            color: #fff;
        }
       
        .star-header {
            text-align: left;
        }
       
        .cosmic-head {
            .star-header {
                background-color: #55608f;
            }
        }
       
        .astro-body {
            .astro-row {
                &:hover {
                    background-color: rgba(255,255,255,0.3);
                }
            }
            .lunar-cell {
                position: relative;
                &:hover {
                    &:before {
                        content: "";
                        position: absolute;
                        left: 0;
                        right: 0;
                        top: -9999px;
                        bottom: -9999px;
                        background-color: rgba(255,255,255,0.2);
                        z-index: -1;
                    }
                }
            }
        }</style>
    <div class="albondigas"></div>
    <h1>Problemáticas en <%= nombreAlcaldia %></h1>

    <!-- Formulario de Registro de Problemática -->
<form action="ProblematicaServlet" method="post">
    <input type="hidden" name="nombreAlcaldia" value="<%= nombreAlcaldia %>">
    <label>Título de tu problemática</label>
    <input type="text" name="titulo" required><br><br>
    <label>Descripción</label>
    <textarea name="problematica" required></textarea><br><br>
    
    <!-- Campo oculto para el usuario, se llena con el valor de la sesión -->
    <input type="hidden" name="usuario" value="<%= session.getAttribute("nombre") %>">

    <button type="submit" name="action" value="alta">Enviar</button>
</form>


<!-- Tabla de Problemáticas -->
<h2>Lista de Problemáticas</h2>
<div class="galactic-center">
<table class="celestial-table">
    <thead class="cosmic-head">
    <tr>
        <th class="star-header">Titulo</th>
        <th class="star-header">Problemática</th>
        <th class="star-header">Usuario</th>
        <th class="star-header">Acciones</th>
    </tr></thead>
    <tbody class="astro-body">
    <% for (Problematica p : problematicas) { %>
        <tr class="astro-row">
            <td class="lunar-cell"><%= p.getTitulo().length() > 45 ? p.getTitulo().substring(0, 45) : p.getTitulo() %></td>
            <td class="lunar-cell">
                <%= p.getDescripcion().length() > 15 ? p.getDescripcion().substring(0, 15) + "..." : p.getDescripcion() %>
            </td>
            <td class="lunar-cell"><%= p.getUsuario().length() > 45 ? p.getUsuario().substring(0, 45) : p.getUsuario() %></td>
            <td class="lunar-cell">
                <form action="ProblematicaServlet" method="post">
                    <input type="hidden" name="action" value="eliminar">
                    <input type="hidden" name="id" value="<%= p.getId() %>">
                    <input type="hidden" name="nombreAlcaldia" value="<%= nombreAlcaldia %>">
                    <button type="submit">Eliminar</button>
                </form>
                <a href="ProblematicaDetalleServlet?id=<%= p.getId() %>&nombre=<%= nombreAlcaldia %>">Ver completo</a>
            </td>
        </tr>
    <% } %></tbody>
</table>
</div>
<!-- Paginación -->
<div>
    <button <% if (pagina == 1) out.print("disabled"); %> onclick="location.href='ProblematicaServlet?nombre=<%= nombreAlcaldia %>&pagina=<%= pagina - 1 %>'">Anterior</button>
    <button <% if (pagina == totalPaginas) out.print("disabled"); %> onclick="location.href='ProblematicaServlet?nombre=<%= nombreAlcaldia %>&pagina=<%= pagina + 1 %>'">Siguiente</button>
</div>
<div>
    Página <%= pagina %> de <%= totalPaginas %>
</div>
<!-- Formulario de Búsqueda -->
<form action="AlcaldiaServlet" method="get">
    <input type="hidden" name="nombre" value="<%= nombreAlcaldia %>">
    <label>Buscar problemática:</label>
    <input type="text" name="busqueda" placeholder="Título o Descripción">
    <button type="submit">Buscar</button>
</form>
</body>
</html>
