<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Accesso a dise�os de opcion Usuario -->
        <link rel="stylesheet" href="css/UsuarioIndex.css" type="text/css" media="all">
    </head>
    <body>
        <section class="contenidoDinamicoMenu" id="contenidoDinamicoMenu" >
        </section>
    </body>
        <script>
        function cargarMenu() {
            // L�gica para cargar el men�
            console.log("Men� cargado");
            // Aqu� puedes agregar el c�digo que necesites para mostrar el men�
        }

        window.onload = function() {
            cargarMenu(); // Llama a la funci�n al cargar la p�gina
        };
    </script>
    <!-- Funcion Ocultar y mostrar menu de usuario  -->
    <script src="jsFunciones/UsuarioMenu.js"></script>
    <script src="js/funcionesIndex.js"></script>
    <script src="js/funcionesLogin.js"></script>
    <script src="js/funcionesAltaUsuario.js"></script>
</html>
