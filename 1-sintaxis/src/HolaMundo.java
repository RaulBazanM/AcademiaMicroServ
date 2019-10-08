
public class HolaMundo {
	public static void main(String []args) { 
		//static -> invocar método sin necesidad de crear objeto o instancia
		
		System.out.println("Hola Mundo");
		
		//no se puede accesar a un método no estático desde métodos estáticos
		//calcularNomina(5);
		
		HolaMundo hola = new HolaMundo(); //crear objeto
		hola.calcularNomina(5);
	}
	
	public void calcularNomina(int numeroEmpleado) { 
		System.out.println("Calculando nómina desde la clase B");
	}
}
