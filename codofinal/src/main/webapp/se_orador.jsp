<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Se Orador</title>
    <link rel="apple-touch-icon" sizes="180x180" href="./source/favicon_package/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./source/favicon_package//favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./source/favicon_package//favicon-16x16.png">
    <link rel="manifest" href="./source/favicon_package//site.webmanifest">
    <link rel="mask-icon" href="./source/favicon_package//safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    <link rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,1,200" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="stylesheet" href="./styles/general_style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.1/dist/sweetalert2.min.css" integrity="sha256-ZCK10swXv9CN059AmZf9UzWpJS34XvilDMJ79K+WOgc=" crossorigin="anonymous">
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
            <li><a class="c-w item c-ns" href="index.jsp">La Conferencia</a></li>
            <li><a class="c-w item c-ns" href="oradores.jsp">Los Oradores</a></li>
            <li><a class="c-w item c-ns" href="lugar_fecha.jsp">El Lugar y la Fecha</a></li>
            <li><a class="c-w item c-s" href="se_orador.jsp">Conviertete en Orador</a></li>
            <li><a class="buy c-ns" href="ticket.jsp">Compra Tickets</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <main class="orador">
      <div class="cont-orador">
        <section>
          <img class="orador-img" src="./source/img/clip_person_speaking.jpg" alt="Person Speaking">
        </section>
        <section>
            <h4>Gestión Oradores</h4>
            <%
            String fname = "";
            String lname = "";
            String email = "";
            String phone = "";
            if(request.getAttribute("phone")!=null){
            	fname = request.getAttribute("fname").toString();
            	lname = request.getAttribute("lname").toString();
            	email = request.getAttribute("email").toString();
            	phone = request.getAttribute("phone").toString();
            };
            %>
          <form method="get" class="form-reg">
            <div class="row">
              <div class="col-md-6">
                <div class="mb-3">
                  <label for="inputFName" class="form-label">Nombre</label>
                  <input type="text" class="form-control" name="fname" id="inputFname" pattern="[A-Za-z]+" value="<%=fname%>">
                </div>
              </div>
              <div class="col-md-6">
                <div class="mb-3">
                  <label for="inputLName" class="form-label">Apellido</label>
                  <input type="text" class="form-control" name="lname" id="inputLname" pattern=[A-Za-z]+ value="<%=lname%>">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="mb-3">
                  <label for="inputEmail1" class="form-label">Email address</label>
                  <input type="email" class="form-control" name="email" id="inputEmail" aria-describedby="emailHelp" value="<%=email%>">
                  <div id="emailHelp" class="form-text">Nunca compartiremos email con terceros.</div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="mb-3">
                  <label for="inputPhone" class="form-label">Teléfono</label>
                  <input type="text" class="form-control" name="phone" id="inputPhone" pattern="[0-9]+" value="<%=phone%>">
                </div>
              </div>
            </div>
            <div class="container d-flex justify-content-between">
              <button id="create"  formaction="r_o" type="submit" class="btn btn-primary">Registrar</button>
              <button id="read" formaction="s_o" type="submit" class="btn btn-secondary">Consultar</button>
              <button id="update" formaction="u_o" type="submit" class="btn btn-success">Modificar</button>
              <button id="delete" formaction="d_o" type="submit" class="btn btn-danger">Eliminar</button>
            </div>
            
          </form>
        </section>
      </div>

    </main>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.1/dist/sweetalert2.all.min.js" integrity="sha256-5+4UA0RwHxrLdxuo+/LioZkIerSs8F/VDnV4Js9ZdwQ=" crossorigin="anonymous"></script>
    <script src="./js/min.js"></script>
    <script type="text/javascript">
    	let status = "<%=request.getAttribute("status")%>";
		let status_read = "<%=request.getAttribute("status_read")%>";
    	let status_updateAll = "<%=request.getAttribute("status_updateAll")%>";
    	let status_updatePhone = "<%=request.getAttribute("status_updatePhone")%>";
    	let status_delete = "<%=request.getAttribute("status_delete")%>";

    	// For resgister
    	if(status == "Success"){
    		Swal.fire({
    			  icon: "success",
    			  title: "Ok",
    			  text: "Registro Exitoso !!"
    			});
    	}
    	if(status == "Fail"){
    		Swal.fire({
    			  icon: "error",
    			  title: "Oops...",
    			  text: "Usuario con mismo email ya existe en la base de datos."
    			});
    	}
    	// For read
    	if(status_read =="Success"){
    		Swal.fire({
    			icon: "success",
    			title: "Ok",
    			text: "Lectura exitosa de la base de datos !!"
    		});
    	}
    	if(status_read =="Fail"){
    		Swal.fire({
  			  icon: "error",
  			  title: "Oops...",
  			  text: "No existe usuario para email suministrado.\nSuministre otro email."
  			});
    	} 
    	
    	// For updateAll
    	if(status_updateAll == "Success"){
    		Swal.fire({
  			  icon: "success",
			  title: "Ok",
			  text: "Se actualizaron todos los campos !!"
    			
    		});
    	}
    	if(status_updateAll == "Fail"){
    		Swal.fire({
    			icon:"error",
    			title: "Oops...",
    			text: "No existe usuario para email suminstrado.\nSuministre otro email."
    		});
    	}
    	// For updatePhone
    	if(status_updatePhone == "Success"){
    		Swal.fire({
    		  icon: "success",
  			  title: "Ok",
  			  text: "Se actualizo correctamente el telefono !!"
      			
      		});
    	}
    	if(status_updatePhone == "Fail"){
    		Swal.fire({
    			icon:"error",
    			title: "Oops...",
    			text: "No existe usuario para email suminstrado.\nSuministre otro email."
    		});
    	}
    	// For delete
    	if(status_delete == "Success"){
    		Swal.fire({
  			  icon: "success",
  			  title: "Ok",
  			  text: "Registro ELIMINADO con Exitoso !!"
  			});
    	}
    	if(status_delete == "Fail"){
    		Swal.fire({
    			  icon: "error",
    			  title: "Oops...",
    			  text: "Usuario no existe en la Base de Datos !!"
    			});
    	}
    </script>
  </body>

  </html>