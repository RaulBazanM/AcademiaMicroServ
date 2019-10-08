<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Productos AJAX</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
        // Cuando termina de pagar la pagina actual, se ejecuta la funcion anonima
        $(document).ready(function(){
            $.ajax({ 
                url : "http://localhost:8080/3-jee/productos",
                success : function(respuesta)
                {
                    var productos = JSON.parse(respuesta);
                    $.each(productos, function(i){
                        console.log(productos[i].nombre);
                        $('#comboProductos').append('<option value = "'+productos[i].idProducto+'">'+productos[i].nombre+'">'+productos[i].fechaRegistro+'">'+productos[i].precio+'">'+productos[i].idCategoria+'">'+productos[i].imagen+'">'+productos[i].stock+'</option>')
                    });// each
                }//success
                }); //.ajax

                $('#btnguardar').click(function(){

                	var producto = {

                                    idProducto : $('#txtnombre').val(),
                                    nombre : $('#txtamaterno').val(), 
                                    fechaRegistro : $('#txtapaterno').val(),
                                    precio : $('#txtidcliente').val(),
                                    idCategoria : $('#txtrfc').val(),
                                    imagen : $('#txtamaterno').val(), 
                                    stock : $('#txtapaterno').val(),               	         
                        	      }
          	      //Convierto el objeto cliente de java script a cadena json
            	      var json = JSON.stringify(producto); 

            	      $.ajax({

                	      url : 'http://localhost:8080/3-jee/productos',
            	          type: "post",
            	          dataType : "json",
            	          contentType : "application/json",
                	      data: json,
            	          success : function(respuesta){
                	      alert(respuesta);
                	         }

                      });
                    
                    });
                
                $('#btnEliminar').click(function(){
                    
                var idProducto = $("#comboProductos").val();
                
    	      $.ajax({

        	      url : 'http://localhost:8080/3-jee/productos?idEliminar='+ idProducto,
    	          type: "post",
    	          //dataType : "json",
    	          //contentType : "application/json",
        	      //data: json,
    	          success : function(respuesta){
        	      alert(respuesta);
        	         }

              });               
                
                });
        }); //ready
</script>
</head>
<body>
       <select id="comboProductos">
              <option value = "0" >Selecciona un producto
              </option>
       </select>
       <br/>
       <input type = "number" value = "0" id = "txtidProducto" placeholder = "Id producto...."/>
       <br/>
       <input type = "text" id = "txtnombre" placeholder = "Nombre...."/>
       <br/>
       <input type = "text" id = "txtfechaRegistro" placeholder = "Fecha de registro...."/>
       <br/>
       <input type = "text" id = "txtprecio" placeholder = "Precio...."/>
       <br/>
       <input type = "text" id = "txtidCategoria" placeholder = "Id categoria...."/>
       <br/>
       <input type = "text" id = "txtimagen" placeholder = "imagen...."/>
       <br/>
       <input type = "text" id = "txtstock" placeholder = "stock...."/>
       <br/>
       <input type = "button" value = "Guardar" id = "btnguardar"/>
       <br/>
       <input type = "button" value = "Eliminar" id = "btnEliminar"/>
</body>
</html>