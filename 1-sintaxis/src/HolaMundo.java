
public class HolaMundo {
	public static void main(String []args) { 
		//static -> invocar m�todo sin necesidad de crear objeto o instancia
		
		System.out.println("Hola Mundo");
		
		//no se puede accesar a un m�todo no est�tico desde m�todos est�ticos
		//calcularNomina(5);
		
		HolaMundo hola = new HolaMundo(); //crear objeto
		hola.calcularNomina(5);
	}
	
	public void calcularNomina(int numeroEmpleado) { 
		System.out.println("Calculando n�mina desde la clase B");
	}
}
