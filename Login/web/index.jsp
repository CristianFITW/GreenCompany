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
        <link rel="stylesheet" href="css/UsuarioMenu.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/estilosLogin.css" type="text/css" media="all">
    </head>
    <body>
        <div class="papasGratinadas" id="menu-horizontal">
            <a href="#">Mapa</a> |
            <a href="#">Green Company</a> |
            <a href="#">Inicio</a> |
            <a href="#">Proximamente...</a> |

            <!-- Envolver el enlace Usuario y las opciones dentro de un contenedor -->
            <span id="usuario-menu">
                <% 
                    // Obtener el valor de txtUsuario desde la sesión
                    String txtUsuario = (String) session.getAttribute("txtUsuario");

                    // Verificar si txtUsuario está vacío o nulo
                    if (txtUsuario != null && !txtUsuario.isEmpty()) {
                %>
                    <!-- Mostrar el nombre del usuario si no está vacío -->
                    <a href="#" onclick="mostrarOpciones()"><%= txtUsuario %></a>
                <% } else { %>
                    <!-- Si está vacío, mostrar ambos enlaces: uno vacío y otro con "Usuario" -->
                    <a href="#" onclick="mostrarOpciones()">${txtUsuario}</a>
                    <a href="#" onclick="mostrarOpciones()">Usuario</a>
                <% } %>
                <!-- Las opciones están dentro de este div y se despliegan justo debajo de Usuario -->
                <div id="opciones">
                    <% 
                        String nombreUsuario = (String) request.getSession().getAttribute("nombre");
                        if (nombreUsuario != null) {
                    %>
                        <!-- Si el usuario está autenticado, muestra su nombre y la opción de cerrar sesión -->
                        <a href="#" onclick="cargarPerfil()"><%=nombreUsuario%></a><br>
<form action="CerrarSesionServlet" method="post">
    <button class="Btn" type="submit">
        <div class="sign">
            <svg viewBox="0 0 512 512">
                <path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"></path>
            </svg>
        </div>
        <div class="text">Logout</div>
    </button>
</form>

                    <% } else { %>
                        <!-- Si no está autenticado, muestra Iniciar Sesión y Registro de Usuarios -->
                        <a href="#" onclick="cargarLogin()">Iniciar Sesión</a><br>
                        <a href="#" onclick="cargarAltaUsuario()">Registro de Usuarios</a>
                        <a href="#" onclick="cargarMenu()">Registro de Usuarios</a>
                    <% } %>
                </div>
            </span>
        </div>
        
        <section class="contenidoDinamico" id="contenidoDinamico" >
        </section>
    </body>
    <!-- Funcion Ocultar y mostrar menu de usuario  -->
    <script src="jsFunciones/UsuarioMenu.js"></script>
    <script src="js/funcionesIndex.js"></script>
    <script src="js/funcionesLogin.js"></script>
    <script src="js/funcionesAltaUsuario.js"></script>
</html>
