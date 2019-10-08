//interface sólo permite definir los métodos, no implementarlos
//No se puede instanciar (no se puede utilizar el operador new)
//Una interface permite estandarizar un código, se obliga a implementarla
public interface IOperacion {
	
	public double sumar(double x, double y);
	public double restar(double x, double y);
	public double multiplicar(double x, double y);
	public double dividir(double x, double y);
}
