<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin clientes AJAX</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
	//Es como agregar dependencias en el pom, pero a nivel del cliente
</script>
<script>
	//Cuando termina de pagar la página actual, se ejecuta la funcion anonima
	$(document).ready(function(){
			//alert("Hola Mundo XD");
			$.ajax({
				url : "http://localhost:8080/3-jee/clientes",
// 				success : function(resultado){
// 						alert(resultado);
// 					}
				success : function(respuesta){
					//es solo el nombre de la funcion, puede ser cualquiera
					var clientes = JSON.parse(respuesta);
					$.each(clientes, function(i) {
							console.log(clientes[i].nombre);
							$('#comboClientes').append('<option value="'+clientes[i].idCliente+'">'+clientes[i].nombre+'</option>');
					}); //each
				} //success
			}); //ajax

			$('#btnguardar').click(function(){
				var cliente = {
								idCliente : $('#txtidcliente').val(), 
								nombre : $('#txtnombre').val(),
								apaterno : $('#txtapaterno').val(),
								amaterno : $('#txtamaterno').val(),
								rfc : $('#txtrfc').val()
							}
				//Convierto el objeto cliente de javascript a cadena JSON
				var json = JSON.stringify(cliente);
				$.ajax({
					url : "http://localhost:8080/3-jee/clientes",
					type : "post",
					dataType : "json",
					contentType : "application/json",
					data : json, //cadena json
					success : function(respuesta){
						alert(respuesta);
					}
				}) 
			}); //click guardar

			var idCliente = $('#comboClientes').find('option:selected').val();

			$('#btneliminar').click(function(){
				var idCliente = $('#comboClientes').find('option:selected').val();
				$.ajax({
					url : "http://localhost:8080/3-jee/clientes?idEliminar="+ idCliente,
					type : "post",
					success : function(respuesta){
						alert(respuesta);
					}
				}) 
			})
	}); //ready
</script>
</head>
<body>
		<select id="comboClientes">
			<option value="0">Selecciona un cliente</option>
		</select>
		</br>
		<input type="number" id="txtidcliente" value="0" placeholder="ID Cliente..."/>
		</br>
		<input type="text" id="txtnombre" placeholder="Nombre..."/>
		</br>
		<input type="text" id="txtapaterno" placeholder="A Paterno..."/>
		</br>
		<input type="text" id="txtamaterno" placeholder="A Materno..."/>
		</br>
		<input type="text" id="txtrfc" placeholder="RFC..."/>
		</br>
		<input type="button" value="Guardar/Actualizar" id="btnguardar"/>
		</br>
		<input type="button" value="Eliminar" id="btneliminar"/>
</body>
</html>