<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <title>Lygar y Fecha</title>
  <link rel="apple-touch-icon" sizes="180x180" href="./source/favicon_package/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="./source/favicon_package//favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="./source/favicon_package//favicon-16x16.png">
  <link rel="manifest" href="./source/favicon_package//site.webmanifest">
  <link rel="mask-icon" href="./source/favicon_package//safari-pinned-tab.svg" color="#5bbad5">
  <meta name="msapplication-TileColor" content="#da532c">
  <meta name="theme-color" content="#ffffff">
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,1,200" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="./styles/style.css">
  <link rel="stylesheet" href="./styles/general_style.css"/>
</head>

<body>
  <nav>
    <div class="nav-container">
      <div class="elem-1 v-center">
        <a href="#"><img class="codo-a-codo" src="./source/img/codoacodo.png" alt=""></a>
        <h5 class="c-w">Conf Bs As</h5>
      </div>
      <div class="elem-2 l-v-center">
        <label class="hide" for="menu-links">
          <span class="material-symbols-outlined c-w p-r-3 hide" style="font-size: 35px;">
            menu
          </span>
        </label>
        <input class="n-v" type="checkbox" name="" id="menu-links">

        <ul class="navigation g-1 p-r-1">
          <li><a class="c-w item c-ns"  href="index.jsp" >La Conferencia</a></li>
          <li><a class="c-w item c-ns"  href="oradores.jsp">Los Oradores</a></li>
          <li><a class="c-w item c-s"  href="lugar_fecha.jsp">El Lugar y la Fecha</a></li>
          <li><a class="c-w item c-ns"  href="se_orador.jsp">Conviertete en Orador</a></li>
          <li><a class="buy c-ns"  href="ticket.jsp">Compra Tickets</a></li>
        </ul>
      </div>
    </div>
  </nav>
    <main></main>
  <footer>
    <div class="footer-container">
      <a class="f-elem-1" href="">Preguntas Frecuentes</a>
      <a class="f-elem-2" href="">Contáctanos</a>
      <a class="f-elem-3" href="">Prensa</a>
      <a class="f-elem-4" href="">Conferencia</a>
      <a class="f-elem-5" href="">Terminos y Condiciones</a>
      <a class="f-elem-6" href="">Privacidad</a>
      <a class="f-elem-7" href="">Estudiantes</a>
    </div>
    
    <p>Codo a Codo 2do Semestre 2023</p>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>