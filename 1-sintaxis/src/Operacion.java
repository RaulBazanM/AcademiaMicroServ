
public class Operacion implements IOperacion { //implements permite implementar una interface

	@Override
	public double sumar(double x, double y) {
		// TODO Auto-generated method stub
		
		return x+y;
	}

	@Override
	public double restar(double x, double y) {
		// TODO Auto-generated method stub
		return x-y;
	}

	@Override
	public double multiplicar(double x, double y) {
		// TODO Auto-generated method stub
		return x*y;
	}

	@Override
	public double dividir(double x, double y) {
		// TODO Auto-generated method stub
		return x/y;
	} 
}
