<%@ page import="ServletsMAPA.Problematica" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Problematica problematica = (Problematica) request.getAttribute("problematica");
    String nombreAlcaldia = (String) request.getAttribute("nombreAlcaldia");
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle de Problemática - <%= nombreAlcaldia %></title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background: url('https://images.unsplash.com/photo-1426170042593-200f250dfdaf?ixlib=rb-4.0.3') no-repeat center center fixed;
            background-size: cover;
            color: white;
            font-size: 16px;
            line-height: 1.6;
            padding: 50px;
            text-align: center;
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: rgba(255, 255, 255, 0.9);
        }

        h2 {
            font-size: 1.5rem;
            color: rgba(255, 255, 255, 0.8);
            margin-bottom: 10px;
        }

        p {
            font-size: 1.1rem;
            color: rgba(255, 255, 255, 0.7);
            margin-bottom: 15px;
        }

        strong {
            color: rgba(255, 255, 255, 0.9);
        }

        .container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.4);
            max-width: 800px;
            margin: auto;
        }

        .button {
            display: inline-block;
            background-color: rgba(46, 204, 113, 0.8);
            color: white;
            padding: 12px 20px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: rgba(39, 174, 96, 0.9);
        }

        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            font-size: 1.1rem;
        }

        .back-link a {
            color: rgba(255, 255, 255, 0.9);
            text-decoration: none;
            font-weight: bold;
            border-bottom: 2px solid transparent;
            transition: border-color 0.3s;
        }

        .back-link a:hover {
            border-color: rgba(255, 255, 255, 0.9);
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Detalle de la Problemática</h1>
        <h2>Alcaldía: <%= nombreAlcaldia %></h2>

        <p><strong>Título:</strong> <%= problematica.getTitulo() %></p>
        <p><strong>Usuario:</strong> <%= problematica.getUsuario() %></p>
        <p><strong>Descripción:</strong></p>
        <p><%= problematica.getDescripcion() %></p>

        <div class="back-link">
            <a href="ProblematicaServlet?nombre=<%= nombreAlcaldia %>" class="button">Volver a la lista de problemáticas</a>
        </div>
    </div>

</body>
</html>
