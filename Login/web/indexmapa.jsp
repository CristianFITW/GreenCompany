<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin título</title>
<style>
  /* Estilos para el fondo y centrado */
  body, html {
    height: 100%;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: url("Pages/IMGS/BA_MAPA-transformed.jpeg");
    background-size: cover; /* Ajusta la imagen para cubrir todo el fondo */
    background-repeat: no-repeat; /* Evita que la imagen se repita */
    background-position: center; /* Centra la imagen */
    background-attachment: fixed; /* Fija el fondo al scroll */
  }
</style>
</head>

<body>
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


    <%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    
    // Verifica si "txtUsuario" es null
    if(session.getAttribute("txtUsuario") == null) {
%>
        <script type="text/javascript">
            // Muestra la alerta
            alert("Vuelve al inicio para iniciar sesión");
            // Redirige a index.jsp, el botón estará visible solo después de presionar la alerta
            window.location.href = 'index.jsp';
        </script>
<%
        // Si txtUsuario es null, no se renderiza el contenido HTML
        return; 
    }
%>
<div class="CDMX"><div class="contenedor-titulo-xtr123">
  <h1 class="titulo-xtr123">Problemáticas en la CDMX</h1>
</div><img src="file.png" width="609" height="750" usemap="#Map" border="0" />
<map name="Map" id="Map">
    
  <area shape="poly" coords="283,98,297,99,292,94,304,85,303,74,291,74,297,67,298,59,302,54,310,55,310,46,320,37,321,29,326,29,328,22,342,14,352,16,352,27,358,40,360,56,354,62,354,68,349,69,350,72,345,78,337,88,339,107,353,121,370,122,376,119,420,139,416,154,437,206,420,214,396,208,389,212,380,205,370,207,349,195,319,187,293,118,276,108" href="ProblematicaServlet?nombre=Gustavo A Madero" alt="GustavoAMadero" />
  <area shape="poly" coords="291,199,296,190,318,188,297,133,278,127,274,130,238,116,229,124,217,172,229,180,243,176,257,178,261,191" href="ProblematicaServlet?nombre=Azcapotzalco" alt="Azcapotzalco" />
  <area shape="poly" coords="343,195,340,212,343,218,338,246,337,257,338,268,300,269,283,274,284,270,267,264,273,250,274,242,291,212,292,200,296,192,319,189" href="ProblematicaServlet?nombre=Cuauhtemoc" alt="Cuauhtemoc" />
  <area shape="poly" coords="341,268,339,251,344,221,342,213,345,196,369,209,379,207,390,213,397,210,420,216,436,208,439,216,430,241,425,246,410,246,399,264,383,263,370,263,355,267" href="ProblematicaServlet?nombre=Venustiano Carranza" alt="VenustianoCarranza" />
  <area shape="poly" coords="173,277,172,267,199,252,213,236,208,229,208,219,218,213,219,203,225,198,229,183,243,178,255,179,259,193,290,201,288,212,280,228,272,242,272,250,265,264,282,272,262,280,255,270,217,280,204,280,197,283,192,289,184,290,185,281,176,281,170,284" href="ProblematicaServlet?nombre=Miguel Hidalgo" alt="MiguelHidalgo" />
  <area shape="poly" coords="328,304,335,276,326,274,327,270,348,269,357,268,370,265,399,266,411,248,427,247,421,298,394,285,390,289,386,287,378,302,353,298,344,299,343,306" href="ProblematicaServlet?nombre=Iztacalco" alt="Iztacalco" />
  <area shape="poly" coords="272,321,282,329,320,333,333,278,325,275,325,270,300,271,261,282,256,296,255,315,257,322,264,326" href="ProblematicaServlet?nombre=Benito Juarez" alt="BenitoJuarez" />
  <area shape="poly" coords="323,332,328,306,344,308,346,301,350,300,379,304,386,290,390,292,394,287,422,301,427,273,468,292,490,305,510,317,508,329,527,349,534,350,542,359,538,363,551,375,496,374,450,388,444,393,438,392,432,395,424,402,419,402,417,407,420,415,413,428,399,416,380,389,372,375,357,361,354,347,348,341,345,331,332,331" href="ProblematicaServlet?nombre=Iztapalapa" alt="Iztapalapa" />
  <area shape="poly" coords="557,380,543,484,571,517,558,520,548,529,539,527,520,506,517,499,504,498,464,506,477,490,485,490,493,480,490,475,494,465,487,462,484,466,477,461,471,459,466,452,458,450,452,443,427,434,414,430,421,420,422,414,419,408,421,403,428,403,437,394,445,395,450,390,491,377,552,376" href="ProblematicaServlet?nombre=Tlahuac" alt="Talhuac" />
  <area shape="poly" coords="309,596,326,607,373,561,370,553,368,544,362,542,363,537,381,537,391,542,397,536,417,526,418,519,423,524,462,508,507,500,514,502,522,511,539,529,549,531,552,534,553,557,569,571,560,590,565,603,570,606,571,627,565,652,562,674,556,692,538,713,525,704,500,702,473,696,452,710,438,733,430,747,410,736,404,736,326,692,292,652" href="ProblematicaServlet?nombre=Milpa Alta" alt="MilpaAlta" />
  <area shape="poly" coords="374,384,404,424,415,434,451,445,457,453,463,453,469,462,484,468,487,465,492,467,488,473,490,480,485,488,478,488,461,506,425,522,418,518,415,525,397,534,391,540,383,535,363,535,360,541,365,545,370,559,327,603,328,560,332,546,333,532,295,503,298,497,302,480,309,483,315,479,321,467,316,453,319,448,319,434,328,434,369,417" href="ProblematicaServlet?nombre=Xochimilco" alt="Xochimilco" />
  <area shape="poly" coords="124,522,141,524,153,519,153,513,164,503,171,503,177,497,178,488,190,474,187,455,191,449,190,442,188,437,194,427,192,417,199,416,203,413,204,407,215,394,220,393,222,398,238,401,248,406,265,406,277,405,294,408,300,414,311,408,318,411,328,399,355,410,368,410,366,416,330,430,317,431,317,445,314,453,318,467,310,480,302,478,293,502,329,532,330,544,326,559,325,602,309,592,291,650,288,654,322,692,216,683,151,637,151,625,134,618,117,553,113,540,125,541" href="ProblematicaServlet?nombre=Tlalpan" alt="Tlalpan" />
  <area shape="poly" coords="93,497,93,489,97,484,100,466,114,465,127,457,127,451,132,449,137,449,141,437,154,430,151,423,158,407,149,395,153,386,163,381,170,370,178,374,189,370,196,375,206,369,221,363,225,360,233,360,232,366,220,379,218,392,205,401,201,412,191,415,190,427,185,453,187,473,177,485,174,497,163,502,151,510,149,518,141,521,123,520,113,521,109,523,97,513,99,502" href="ProblematicaServlet?nombre=Magdalena Contreras" alt="MagdalenaContreras" />
  <area shape="poly" coords="87,499,92,500,91,489,95,484,99,465,113,464,123,456,127,449,134,447,139,436,152,429,149,423,155,408,146,397,152,384,162,379,170,368,179,372,189,368,197,373,232,357,236,361,233,370,222,381,221,390,224,395,239,400,244,391,251,380,250,366,246,363,247,360,253,359,279,331,273,324,264,327,256,323,253,317,254,294,259,281,255,274,219,281,204,283,192,291,184,292,170,303,158,310,162,312,162,321,169,325,169,332,174,341,160,351,148,363,138,375,94,451" href="ProblematicaServlet?nombre=Alvaro Obregon" alt="AlvaroObregon" />
  <area shape="poly" coords="281,332,315,335,324,335,331,334,344,333,346,341,352,350,354,361,373,380,368,408,355,408,329,398,317,408,312,407,301,411,290,406,272,404,251,403,241,401,253,382,253,367,249,363" href="ProblematicaServlet?nombre=Coyoacan" alt="Coyoacan" />
  <area shape="poly" coords="168,274,124,310,117,300,106,309,108,317,96,310,80,311,81,325,76,331,76,345,71,357,74,367,46,394,49,402,51,409,42,409,29,427,34,445,41,441,57,444,69,466,64,489,78,491,85,498,90,452,138,370,170,342,165,334,166,327,160,323,159,314,155,311,181,292,183,283,175,283,170,285" href="ProblematicaServlet?nombre=Cuajimalpa" alt="Cuajimalpa" />
</map></div>
</body>
</html>
