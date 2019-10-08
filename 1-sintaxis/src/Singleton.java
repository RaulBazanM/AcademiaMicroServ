//Pat�n de dise�o Singleton --> s�lo para objetos est�ticos

import java.util.Date;

public class Singleton {
	
	//Objeto es compartido en toda la JVM
	//static, a nivel de objeto/atributo, implica que el objeto es compartido en toda la JVM (similar a una variable global)
	static Date fechaActual;
	public static void main(String[] args) {
		fechaActual = new Date();
		String fecha = fechaActual.toString();
		
		//Asegurar que siempre existir� solamente 1 objeo de tipo fechaActual
		if(fechaActual == null) {
			fechaActual = new Date();
		}
		else {
			System.out.println("Fecha actual es: " + fecha);
		}
	}

}
