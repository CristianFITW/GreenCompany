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
margin: 0;
background: linear-gradient(45deg, #49a09d, #5f2c82);
font-family: sans-serif;
font-weight: 100;
position: absolute;
bottom: 20px; /* Ajusta el valor según el padding deseado */
right: 20px;  /* Ajusta el valor según el padding deseado */
transform: none; /* Se elimina el transform para no centrar el elemento */

        }
       
        .celestial-table {
            width: 700px;
            border-collapse: collapse;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }
       
        .star-header,
        .lunar-cell {
            padding: 10px;
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
        }</style>    <style>
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
button {
  font-family: inherit;
}

.form-container {
  width: 400px;
  background: linear-gradient(#212121, #212121) padding-box,
              linear-gradient(145deg, transparent 35%,#e81cff, #40c9ff) border-box;
  border: 2px solid transparent;
  padding: 32px 24px;
  font-size: 14px;
  font-family: inherit;
  color: white;
  display: flex;
  flex-direction: column;
  gap: 20px;
  box-sizing: border-box;
  border-radius: 16px;
}

.form-container button:active {
  scale: 0.95;
}

.form-container .form {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.form-container .form-group {
  display: flex;
  flex-direction: column;
  gap: 2px;
}

.form-container .form-group label {
  display: block;
  margin-bottom: 5px;
  color: #717171;
  font-weight: 600;
  font-size: 12px;
}

.form-container .form-group input {
  width: 100%;
  padding: 12px 16px;
  border-radius: 8px;
  color: #fff;
  font-family: inherit;
  background-color: transparent;
  border: 1px solid #414141;
}

.form-container .form-group textarea {
  width: 100%;
  padding: 12px 16px;
  border-radius: 8px;
  resize: none;
  color: #fff;
  height: 96px;
  border: 1px solid #414141;
  background-color: transparent;
  font-family: inherit;
}

.form-container .form-group input::placeholder {
  opacity: 0.5;
}

.form-container .form-group input:focus {
  outline: none;
  border-color: #e81cff;
}

.form-container .form-group textarea:focus {
  outline: none;
  border-color: #e81cff;
}

.form-container .form-submit-btn {
  display: flex;
  align-items: flex-start;
  justify-content: center;
  align-self: flex-start;
  font-family: inherit;
  color: #717171;
  font-weight: 600;
  width: 40%;
  background: #313131;
  border: 1px solid #414141;
  padding: 12px 16px;
  font-size: inherit;
  gap: 8px;
  margin-top: 8px;
  cursor: pointer;
  border-radius: 6px;
}

.form-container .form-submit-btn:hover {
  background-color: #fff;
  border-color: #fff;
}




    </style>
    <div class="albondigas"></div>
    <h1>Problemáticas en <%= nombreAlcaldia %></h1>

    <!-- Formulario de Registro de Problemática -->
    <div class="form-container">
        <form class="form" action="ProblematicaServlet" method="post">
                <input type="hidden" name="nombreAlcaldia" value="<%= nombreAlcaldia %>">
                <input type="hidden" name="usuario" value="<%= session.getAttribute("nombre") %>">
          <div class="form-group">
            <label for="email">Título de tu problemática</label>
            <input type="text" name="titulo" required>
          </div>
          <div class="form-group">
            <label for="textarea">Descripción</label>
            <textarea name="problematica" id="textarea" rows="10" cols="50" required="">          </textarea>
          </div>
          <button class="form-submit-btn" type="submit" name="action" value="alta">Enviar</button>
        </form>
      </div>

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
