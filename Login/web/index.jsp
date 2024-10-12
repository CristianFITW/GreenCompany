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
        <!-- Accesso a diseños de opcion Usuario -->
        <link rel="stylesheet" href="css/UsuarioIndex.css" type="text/css" media="all">
    </head>
    <body>
        <section class="contenidoDinamicoMenu" id="contenidoDinamicoMenu" >
        </section>
    </body>
        <script>
        function cargarMenu() {
            // Lógica para cargar el menú
            console.log("Menú cargado");
            // Aquí puedes agregar el código que necesites para mostrar el menú
        }

        window.onload = function() {
            cargarMenu(); // Llama a la función al cargar la página
        };
    </script>
    <!-- Funcion Ocultar y mostrar menu de usuario  -->
    <script src="jsFunciones/UsuarioMenu.js"></script>
    <script src="js/funcionesIndex.js"></script>
    <script src="js/funcionesLogin.js"></script>
    <script src="js/funcionesAltaUsuario.js"></script>
</html>
