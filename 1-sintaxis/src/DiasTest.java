
public class DiasTest {
	public static void main(String[] args) {
		int diaActual = 1;
		
		//if (diaActual == Dias.LUNES.ordinal()) {
		//	System.out.println("Hoy es Lunes");
		//}
		if (diaActual == Dias.LUNES.getIdDia()) {
			System.out.println("Hoy es: " + Dias.LUNES.getName());
			}
	}
}
