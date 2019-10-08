
public class Sobrecarga { //cambiar tipo ó número de parámetros
	public double sumar (double x, double y) {
		return x+y;
	}
	
	public int sumar (int x, int y) {
		return x+y;
	}
	
	public long sumar (long x, long y) {
		return x+y;
	}
	
	public long sumar (long x, long y, long z) {
		return x+y+z;
	}
}
