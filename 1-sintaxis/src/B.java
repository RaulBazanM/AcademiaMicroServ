
public class B extends A {
	//extends define herencia
	
	@Override //etiqueta de sobreescritura, es una anotaci�n opcional
	public void calcularNomina(int numeroEmpleado) {
		// TODO Auto-generated method stub
		System.out.println("Calculandi n�mina desde la clase B");
	}
	
	@Override
	public void noAbstracto() {
		System.out.println("Hola Mundo");
	}
}
