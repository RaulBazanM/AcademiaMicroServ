package com.everis.examenuno.ejerciciouno;

import java.util.ArrayList;

public class Programa {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		analizarTexto("Hola Academia Everis");
	}
	
	public static void analizarTexto(String cadena) {
		System.out.println(cadena.length());
		String mayusculas = cadena.toUpperCase();
		System.out.println(mayusculas);
		for(int i=0; i<mayusculas.length(); i++) {
			char caracter = mayusculas.charAt(i); 
			int contador = 0;
			boolean repetido = false;
			if(caracter != ' ') {
				for (int j=0; j<i; j++) {
					if(caracter==mayusculas.charAt(j)) {
						repetido = true;
						break;
					}
				}
				if(repetido == false) {
					for(int k=i; k<mayusculas.length(); k++) {
						if (caracter==mayusculas.charAt(k)){
							contador++;
						}
					}
					System.out.println(contador + " letra " + caracter);
				}
			}
		}
	}

}
