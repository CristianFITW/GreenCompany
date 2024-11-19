<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/USERCSS.css" type="text/css" media="all">
        
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //Borrar directivas de memoria cache y anular algoritmos predeterminados para almacenar cache 
            response.setHeader("Pragma", "no-cache");//Directivas compatibles con memorias cache 
            response.setDateHeader("Expires", 0);//Proporciona Fecha y hora para decir el tiempo de respuesta caduco 
        %>
    </head>
    <body>
        <div class="trtr">
    <div class="tarjeta">
        <ul class="lista">
          <li class="elemento">
<svg class="lucide lucide-usuario-redondo-agregar"
              stroke-linejoin="round"
              stroke-linecap="round"
              stroke-width="2"
              stroke="#7e8590"
              fill="none"
              viewBox="0 0 48 48"
              height4824"
              width="48"
              xmlns="http://www.w3.org/2000/svg">
<path d="M24 42C33.9411 42 42 33.9411 42 24C42 14.0589 33.9411 6 24 6C14.0589 6 6 14.0589 6 24C6 33.9411 14.0589 42 24 42ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z" />
<path d="M12 35.6309C12 34.5972 12.772 33.7241 13.7995 33.6103C21.515 32.7559 26.5206 32.8325 34.218 33.6287C35.2324 33.7337 36 34.5918 36 35.6116C36 36.1807 35.7551 36.7275 35.3262 37.1014C26.2414 45.0195 21.0488 44.9103 12.6402 37.1087C12.2306 36.7286 12 36.1897 12 35.6309Z" />
<path d="M34.1151 34.6234C26.4784 33.8334 21.5449 33.7587 13.9095 34.6042C13.3954 34.6612 13 35.1002 13 35.6309C13 35.9171 13.1187 36.1885 13.3204 36.3757C17.4879 40.2423 20.6461 41.9887 23.7333 41.9999C26.8309 42.0113 30.1592 40.2783 34.6691 36.3476C34.8767 36.1667 35 35.8964 35 35.6116C35 35.0998 34.6154 34.6752 34.1151 34.6234ZM13.6894 32.6164C21.4852 31.7531 26.5628 31.8315 34.3209 32.6341C35.8495 32.7922 37 34.0838 37 35.6116C37 36.465 36.6336 37.2884 35.9832 37.8553C31.4083 41.8426 27.598 44.0141 23.726 43.9999C19.8435 43.9857 16.2011 41.7767 11.9601 37.8418C11.3425 37.2688 11 36.4624 11 35.6309C11 34.0943 12.1487 32.787 13.6894 32.6164Z" />
<path d="M32 20C32 24.4183 28.4183 28 24 28C19.5817 28 16 24.4183 16 20C16 15.5817 19.5817 12 24 12C28.4183 12 32 15.5817 32 20Z" />
<path d="M24 26C27.3137 26 30 23.3137 30 20C30 16.6863 27.3137 14 24 14C20.6863 14 18 16.6863 18 20C18 23.3137 20.6863 26 24 26ZM24 28C28.4183 28 32 24.4183 32 20C32 15.5817 28.4183 12 24 12C19.5817 12 16 15.5817 16 20C16 24.4183 19.5817 28 24 28Z" />
</svg>

<p class="etiqueta" onclick="window.location.href='paginaInicio.jsp'">Perfil</p>
          </li>
          <li class="elemento">
            <svg
              class="lucide lucide-usuario-redondo-agregar"
              stroke-linejoin="round"
              stroke-linecap="round"
              stroke-width="2"
              stroke="#7e8590"
              fill="none"
              viewBox="0 0 24 24"
              height="24"
              width="24"
              xmlns="http://www.w3.org/2000/svg"
            >
<path d="M15 3H16.2C17.8802 3 18.7202 3 19.362 3.32698C19.9265 3.6146 20.3854 4.07354 20.673 4.63803C21 5.27976 21 6.11985 21 7.8V16.2C21 17.8802 21 18.7202 20.673 19.362C20.3854 19.9265 19.9265 20.3854 19.362 20.673C18.7202 21 17.8802 21 16.2 21H15M10 7L15 12M15 12L10 17M15 12L3 12" />
            </svg>
            <p class="etiqueta" onclick="cargarLogin()">Iniciar Sesión</p>
          </li>
        </ul>
        <div class="separador"></div>
        <ul class="lista">
          <li class="elemento">
            <svg
              class="lucide lucide-ajustes"
              stroke-linejoin="round"
              stroke-linecap="round"
              stroke-width="2"
              stroke="#7e8590"
              fill="none"
              viewBox="0 0 24 24"
              height="24"
              width="24"
              xmlns="http://www.w3.org/2000/svg"
            >
<path d="M3,17H7M5,19V15"></path><path id="primary" d="M9,21H20a1,1,0,0,0,1-1,7,7,0,0,0-7-7H12a6.91,6.91,0,0,0-2,.29" ></path><circle id="primary-2" data-name="primary" cx="13" cy="8" r="5" ></circle>
            </svg>
            <p class="etiqueta" onclick="cargarAltaUsuario()">Registrarme</p>
          </li>
          <li class="elemento eliminar">
            <svg
              class="lucide lucide-papelera-2"
              stroke-linejoin="round"
              stroke-linecap="round"
              stroke-width="2"
              stroke="#7e8590"
              fill="none"
              viewBox="0 0 24 24"
              height="24"
              width="24"
              xmlns="http://www.w3.org/2000/svg"
            >
            <path d="M14 20H6C4.89543 20 4 19.1046 4 18L4 6C4 4.89543 4.89543 4 6 4H14M10 12H21M21 12L18 15M21 12L18 9">
            </svg>
<p class="etiqueta" onclick="document.getElementById('cerrarSesionForm').submit();">Cerrar Sesión</p>
<form id="cerrarSesionForm" action="CerrarSesionServlet" method="post">
    <!-- Puedes incluir más campos ocultos si es necesario -->
</form>
          </li>
        </ul>
        <div class="separador"></div>
        <ul class="lista">
          <li class="elemento">
<svg version="1.1" id="graph-5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 1010 1010" enable-background="new 0 0 1010 1010" xml:space="preserve">
<g id="graph-5-graph-5">
	<polygon fill="#323B5A" points="1010,928.5039 81.4746,928.5039 81.4746,0 44.7754,0 44.7754,928.5039 0,928.5039 0,965.2451 
		44.7754,965.2451 44.7754,1010 81.4746,1010 81.4746,965.2451 1010,965.2451 	"/>
	<path fill="#323B5A" d="M399.812,465.5879c-10.1509,0-18.3701,8.1987-18.3701,18.3496v378.75
		c0,10.1514,8.2192,18.3711,18.3701,18.3711h84.126c10.1509,0,18.3701-8.2197,18.3701-18.3711v-378.75
		c0-10.1509-8.2192-18.3496-18.3701-18.3496H399.812z"/>
	<path fill="#323B5A" d="M189.375,633.9004c-10.1509,0-18.3496,8.2402-18.3496,18.3711v210.416
		c0,10.1514,8.1987,18.3711,18.3496,18.3711h84.187c10.1099,0,18.3501-8.2197,18.3501-18.3711v-210.416
		c0-10.1309-8.2402-18.3711-18.3501-18.3711H189.375z"/>
	<path fill="#323B5A" d="M610.209,633.9004c-10.1309,0-18.3506,8.2402-18.3506,18.3711v210.416
		c0,10.1514,8.2197,18.3711,18.3506,18.3711h84.166c10.1504,0,18.3701-8.2197,18.3701-18.3711v-210.416
		c0-10.1309-8.2197-18.3711-18.3701-18.3711H610.209z"/>
	<path fill="#323B5A" d="M820.625,423.5044c-10.1504,0-18.3711,8.2197-18.3711,18.3706v420.8125
		c0,10.1514,8.2207,18.3711,18.3711,18.3711h84.166c10.1309,0,18.3506-8.2197,18.3506-18.3711V441.875
		c0-10.1509-8.2197-18.3706-18.3506-18.3706H820.625z"/>
	<path fill="#323B5A" d="M173.2856,598.4336c4.1919,0,8.3838-1.418,11.836-4.3359l281.6377-238.0743l154.7095,155.0801
		c3.4316,3.4727,8.4257,4.9727,13.0078,5.3828c4.8906-0.0205,9.5753-1.9511,13.0273-5.4238l256.0342-258.2544
		c7.1514-7.1919,7.0693-18.8428-0.1231-25.9731c-7.1923-7.1509-18.8427-7.1304-25.9531,0.1025L634.4141,472.0811L480.8145,318.1318
		c-6.7398-6.7807-17.5279-7.2329-24.8433-1.0683L161.4087,566.0498c-7.7676,6.5547-8.7129,18.1436-2.1577,25.8916
		C162.8677,596.2354,168.0664,598.4336,173.2856,598.4336z"/>
</g>
</svg>
            <p class="etiqueta">Mís Estadísticas</p>
          </li>
        </ul>
    </div></div>
    </body>    <script src="jsFunciones/UsuarioMenujs.js"></script>
    <script src="js/funcionesIndex.js"></script>
    <script src="js/funcionesLogin.js"></script>
    <script src="js/funcionesAltaUsuario.js"></script>
    <script src="js/funcionesLogin.js"></script>
</html>