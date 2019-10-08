import java.io.BufferedReader;
import java.io.File; //Ctrl + shift + O para agregar rápidamente las clases
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 * Excepcion es un posible error en java
 * @author Dell5458
 *
 */
public class Exceptions {
	
	public static void main(String[] args) {
		try {
			metodo1();
		} catch (FileNotFoundException | LecturaArchivoException error) { //puede ser una de las dos excepciones, se puede separar en dos catch
			// TODO Auto-generated catch block
			System.err.println("Ocurrió un error, intenta nuevamente..." + error.getMessage()); //Aquí se usa try ... catch para no mandar el error directo al usuario (throws) 
		}
		finally {
			System.out.println("Cerrando sesion en el sistema...");
		}
	}
	
	public static void metodo1() throws FileNotFoundException, LecturaArchivoException {
		//Excepciones: checked(compilación) y unchecked(ejecución)
		
		//Unchecked
		try {
			int division = 5/0;
		}
		catch(ArithmeticException e){
			System.err.println(e.getMessage());
		}
		System.out.println("Continua programa...");
		
		//Checked
		File archivo = new File("C:/tem/archivo.txt");
		//try ... catch, cuando manejo el error y no afecta la operación del sistema
		//throws, lanza el error a quien mandó a llamarte, en este caso manda el error al main() --> metodo1() 
		FileReader reader = new FileReader(archivo);
		
		BufferedReader buffer = new BufferedReader(reader);
		try {
			String linea = buffer.readLine();
		}
		catch(IOException e) {
			throw new LecturaArchivoException(e.getMessage()); //throw define nueva excepcion
		}
	}
}
