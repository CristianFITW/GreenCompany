<%-- 
    Document   : newjsp
    Created on : 26 nov. 2024, 19:29:44
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <h1>Formulario para Subir Imagen</h1>
    <form action="GuardarServlet1" method="post" enctype="multipart/form-data">
        <label for="curp">CURP:</label>
        <input type="text" name="curp" id="curp" required pattern="[A-Z0-9]{18}" title="Ingrese un CURP válido de 18 caracteres.">
        <br><br>
        <label for="imagen">Seleccionar imagen:</label>
        <input type="file" name="imagen" id="imagen" required>
        <br><br>
        <input type="submit" value="Subir Imagen">
    </form>

    <h2>Imagen Subida:</h2>
    <c:if test="${not empty imagen}">
        <img src="${imagen}" alt="Imagen Subida" style="max-width: 300px;"/>
    </c:if>
    </body>
</html>
