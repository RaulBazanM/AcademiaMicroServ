import java.io.*;

public class TelefonosService {
	
	public void leerTelefonos() throws FileNotFoundException {
		File archivo = new File("C:\\temp\\telefonos.txt");
		BufferedReader lectura = new BufferedReader(new FileReader(archivo));
		String linea; 
		try {
			while((linea = lectura.readLine()) != null) {
				String[] partes = linea.split(",");
				System.out.println(partes[1]);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		TelefonosService telefonos = new TelefonosService();
		try {
			telefonos.leerTelefonos();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
