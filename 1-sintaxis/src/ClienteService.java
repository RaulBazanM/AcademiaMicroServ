import java.util.Date;
import java.text.SimpleDateFormat;

public class ClienteService {
	
	public void calcularRFC(String nombre, String aPaterno, String aMaterno, Date fechaNacim) {
		//SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
		//String rfc = aPaterno.substring(0, 2) + aMaterno.charAt(0)  + nombre.charAt(0) + formato.format(fechaNacim).substring(8, 10) + formato.format(fechaNacim).substring(3,5) + formato.format(fechaNacim).substring(0,2);
		SimpleDateFormat formato = new SimpleDateFormat("yyMMdd");
		String rfc = aPaterno.substring(0, 2) + aMaterno.charAt(0)  + nombre.charAt(0) + formato.format(fechaNacim);
		System.out.println(rfc);
	}
	
	public static void main(String[] args) {
		Date fechaNacim = new Date();
		ClienteService cliente = new ClienteService();
		cliente.calcularRFC("GERARDO", "GUERRERO", "GOMEZ", fechaNacim);
	}
}
