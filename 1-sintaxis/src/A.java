
public abstract class A {
	//una clase abstracta no se puede instanciar (no se pueden crear objetos de este tipo)
	public abstract void calcularNomina(int numeroEmpleado);
	
	public void noAbstracto() {
		//una clase abstracta también puede tener métodos no abstractos
		System.out.println("Hola Mundo");
	}
}

//Una interface sólo puede tener métodos abstractos