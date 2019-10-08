
public class B extends A {
	//extends define herencia
	
	@Override //etiqueta de sobreescritura, es una anotación opcional
	public void calcularNomina(int numeroEmpleado) {
		// TODO Auto-generated method stub
		System.out.println("Calculandi nómina desde la clase B");
	}
	
	@Override
	public void noAbstracto() {
		System.out.println("Hola Mundo");
	}
}
