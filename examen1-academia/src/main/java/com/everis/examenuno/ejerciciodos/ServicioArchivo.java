package com.everis.examenuno.ejerciciodos;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.List;

public class ServicioArchivo extends Servicio {
	@Override
	public void exportar(List<String> cadenas) {
		try {
			File archivo = new File("c:/temp/cadenas.txt");
			FileWriter fw = new FileWriter(archivo);
			BufferedWriter escribir = new BufferedWriter(fw);
			for(String cadena : cadenas) {
				escribir.write(cadena + "\n");
			}
			escribir.close();
		}
			catch(Exception e){
				System.out.println(e.getMessage());
				
			}
	}
		
}


