package com.everis;

import com.everis.poo.model.Cliente;
import com.google.gson.Gson;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        String json = convertirClienteJson();
        System.out.println(json);
    }
    
    public static String convertirClienteJson() {
    	Cliente cliente = new Cliente(); //Hay que importarlo de otro paquete
    	cliente.setIdCliente(1);
    	cliente.setNombre("Raul");
    	cliente.setApaterno("Bazan");
    	cliente.setAmaterno("Mendoza");
    	cliente.setRfc("BAMR");
    	
    	//Convertir este objeto a formato JSON
    	Gson gson = new Gson();
    	String json = gson.toJson(cliente); //Convierte el objeto a JSON
    	return json;
    }
}
