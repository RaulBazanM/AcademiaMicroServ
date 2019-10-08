package com.everis.examenuno.ejerciciodos;

import java.util.ArrayList;
import java.util.List;

public class ServicioPrueba {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<String> lista = new ArrayList<String>();
		lista.add("Cadena 1");
		lista.add("Cadena 2");
		lista.add("Cadena 3");
		lista.add("Cadena 4");
		lista.add("Cadena 5");
		
		ServicioConsola servicioConsola = new ServicioConsola();
		ServicioArchivo servicioArchivo = new ServicioArchivo();
		
		servicioConsola.exportar(lista);
		servicioArchivo.exportar(lista);
	}

}
