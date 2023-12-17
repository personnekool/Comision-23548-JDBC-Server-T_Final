/**
 * 
 */
(function(){
	const navPosition = document.querySelector('nav').getBoundingClientRect();
	const footerPosition = document.querySelector('footer').getBoundingClientRect();
	const h = footerPosition.bottom - navPosition.bottom;
	const h2 = h - (7*16);
	
	console.log(h);

	document.documentElement.style.setProperty('--main-section-orador',h+"px");
	document.documentElement.style.setProperty('--img-orador',h2+'px');
	
	// Get Form fields
	const fname = document.getElementById('inputFname');
	const lname = document.getElementById('inputLname');
	const email = document.getElementById('inputEmail');
	const phone = document.getElementById('inputPhone');
	
	// Get Buttons elements
	const createOrador = document.getElementById('create');
	const readOrador = document.getElementById('read');
	const updateOrador = document.getElementById('update');
	const deleteOrador = document.getElementById('delete');
	
	function CheckRegistrationFields(e){
		if(fname.value == ""){
			alert("Campo Nombre Vacio !!");
			fname.focus();
			e.preventDefault();
		}else if(lname.value == ""){
			alert("Campo Apellido Vacio !!");
			lname.focus();
			e.preventDefault();
		}else if(email.value == ""){
			alert("Campo Email Vacio");
			email.focus();
            e.preventDefault();
		}else if(phone.value == ""){
			alert("Campo Teléfono Vacio !!");
			phone.focus();
			e.preventDefault();
		}
	}

	function isFieldEmpty(field,fieldName,e, msg){
		if(field.value == ""){
			alert(`${fieldName} necesario para eliminar registro !!`);
			e.preventDefault();
			field.focus();
			return false;
		}else{
			return true;
		}
	}
	
	
	createOrador.addEventListener('click',(e)=>{
		CheckRegistrationFields(e);
	});
	readOrador.addEventListener('click',(e)=>{
		// Search by unique email address in db
		isFieldEmpty(email, "Email",e,'Email requerido para busqueda.\nSe ignoran otros campos !!');
	});
	updateOrador.addEventListener('click',(e)=>{
		if(confirm("Desea actualizar todos los campos ?")){
			CheckRegistrationFields(e)
		}else{
			if(confirm("Desea actualizar el telefono ?")){
				if(phone.value == ""){
					e.preventDefault();
					phone.focus();
				}
			}else{
				e.preventDefault();
				alert("Ninguna operación se ejecuto");
			}
		}
			
	});
	
	deleteOrador.addEventListener('click',(e)=>{
		if(isFieldEmpty(email,"Email",e,'Email requerido para Eliminar.')){
			if(!confirm('El registro se eliminara permanentemente.\n¿Desea continuar ?')){
				e.preventDefault();
			}
		}
		
	});
	
	
})();