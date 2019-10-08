import java.io.IOException;

public class LecturaArchivoException extends IOException { //herencia clase Exception
	
	//Constructores no se heredan
	public LecturaArchivoException(String mensaje) {
		super(mensaje); //Invoca al constructor de la clase padre
		//Notificar acreca de este error
	}
}
