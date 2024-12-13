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
    <link rel="stylesheet" href="css/alcaldiacss.css" type="text/css" media="all">
    <meta charset="UTF-8">
    <title><%= nombreAlcaldia %> - Problemáticas</title>

</head>
<body><!-- Enlace a Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;700&display=swap" rel="stylesheet">

<style>
  /* Contenedor del título */
  .contenedor-titulo-xtr123 {
    display: flex;
    justify-content: center;
    align-items: flex-start; /* Título en la parte superior */
    padding-top: 30px;
  }

  /* Estilo del título */
  .titulo-xtr123 {
    font-family: 'Dancing Script', cursive;
    font-size: 3.5rem; /* Tamaño más grande para destacar */
    font-weight: 700; /* Grosor para mayor visibilidad */
    letter-spacing: 1px;
    color: white;
    text-align: center;
    text-transform: none; /* Mantiene el texto en formato normal */
    position: relative;
    transition: color 0.3s ease, transform 0.3s ease;
  }

  /* Efecto hover del título */
  .titulo-xtr123:hover {
    color: #999999; /* Cambia a rojo al pasar el mouse */
    transform: scale(1.1); /* Agranda ligeramente el texto */
  }

  /* Línea decorativa con hover */
  .titulo-xtr123::before {
    content: '';
    position: absolute;
    width: 100%;
    height: 2px;
    background-color: #999999;
    bottom: -5px;
    left: 0;
    transform: scaleX(0);
    transform-origin: bottom right;
    transition: transform 0.25s ease-out;
  }

  .titulo-xtr123:hover::before {
    transform: scaleX(1);
    transform-origin: bottom left;
  }
</style>

<div class="contenedor-titulo-xtr123">
  <h1 class="titulo-xtr123">Problemáticas en <%= nombreAlcaldia %></h1>
</div>

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

bottom: 25px; /* Ajusta el valor según el padding deseado */
right: 25px;  /* Ajusta el valor según el padding deseado */
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
            padding: 5px;
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
.fo1{  padding: 110px 220px;
}
.form-container {
    width: 400px;
    background: linear-gradient(#380c574d, #212121) padding-box, linear-gradient(145deg, transparent 35%, #124b15, #e81cff) border-box;
    border: 2px solid transparent;
    padding: 32px 24px;
    font-size: 14px;
    font-family: inherit;
    color: #388e3c;
    display: flex
;
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
  color: white;
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
<<<<<<< HEAD
=======
    <div class="fo1">
>>>>>>> mi-nueva-rama
    <div class="albondigas"></div>

    <!-- Formulario de Registro de Problemática -->
<<<<<<< HEAD
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
=======
    <div class="form-container">    <h2>Ingrese su problemática</h2>
>>>>>>> mi-nueva-rama

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
</div>
<!-- Tabla de Problemáticas -->
<div class="galactic-center">
    <h2>Lista de Problemáticas</h2>

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
<br>
<div class="pagination-container">
    <button class="pagination-btn" <% if (pagina == 1) out.print("disabled"); %> onclick="location.href='ProblematicaServlet?nombre=<%= nombreAlcaldia %>&pagina=<%= pagina - 1 %>'">Anterior</button>
    <button class="pagination-btn" <% if (pagina == totalPaginas) out.print("disabled"); %> onclick="location.href='ProblematicaServlet?nombre=<%= nombreAlcaldia %>&pagina=<%= pagina + 1 %>'">Siguiente</button>
    <span class="pagination-info">Página <%= pagina %> de <%= totalPaginas %></span>
</div>

<!-- Formulario de Búsqueda -->
<form action="AlcaldiaServlet" method="get" class="search-form">
    <input type="hidden" name="nombre" value="<%= nombreAlcaldia %>">
    <label for="busqueda">Buscar problemática:</label>
    <input type="text" id="busqueda" name="busqueda" placeholder="Título o Descripción">
    <button type="submit" class="search-btn">Buscar</button>
</form>
</div>
<style>
h2 {
    text-align: center;          /* Centra el texto horizontalmente */
    font-family: 'Arial', sans-serif; /* Establece la fuente */
    color: #333;                 /* Color del texto */
    padding: 10px 0;             /* Espaciado superior e inferior */
    background-color: #f4f4f4;  /* Fondo suave */
    border-radius: 8px;         /* Bordes redondeados */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Sombra sutil */
    margin: 20px auto;           /* Márgenes para centrar el elemento */
    max-width: 80%;              /* Limita el ancho máximo */
}

/* Estilos para la paginación */
.pagination-container {
    justify-content: space-between;
    margin-bottom: 20px;
    font-size: 16px;
    position: relative;
}

.pagination-btn {
    padding: 12px 24px;
    background: linear-gradient(45deg, #6a1b9a, #388e3c); /* Gradiente morado-verde */
    color: white;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background 0.3s ease, transform 0.3s ease;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    opacity: 0.9;
}

.pagination-btn:hover {
    background: linear-gradient(45deg, #8e24aa, #43a047); /* Colores más intensos al pasar el ratón */
    transform: scale(1.05);
}

.pagination-btn:disabled {
    background: linear-gradient(45deg, #d1c4e9, #c8e6c9);
    cursor: not-allowed;
    opacity: 0.6;
}

.pagination-info {
    font-weight: bold;
    color: #555;
}

/* Estilos para el formulario de búsqueda */
.search-form {
    padding: 20px;
    border-radius: 10px;
    background: rgba(255, 255, 255, 0.8); /* Fondo con transparencia */
    backdrop-filter: blur(10px); /* Efecto de desenfoque en el fondo */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
}

.search-form label {
    font-size: 14px;
    font-weight: bold;
    color: #333;
}

.search-form input[type="text"] {
    padding: 12px;
    font-size: 16px;
    border-radius: 8px;
    border: 1px solid #ccc;
    transition: border 0.3s ease;
}

.search-form input[type="text"]:focus {
    border-color: #388e3c; /* Resalta el borde cuando está enfocado */
}

.search-btn {
    padding: 12px;
    background: linear-gradient(45deg, #6a1b9a, #388e3c); /* Gradiente morado-verde */
    color: white;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background 0.3s ease, transform 0.3s ease;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    opacity: 0.9;
}

.search-btn:hover {
    background: linear-gradient(45deg, #8e24aa, #43a047); /* Colores más intensos al pasar el ratón */
    transform: scale(1.05);
}

</style>
<!-- Paginación -->


</body>
</html>