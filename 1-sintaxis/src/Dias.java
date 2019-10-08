/**
 * Enumeracion es una clase en java, un catálogo finito de valores
 * No se puede instanciar, al igual que la interface 
 * @author Dell5458
 *
 */
public enum Dias {
	//LUNES, MARTES, MIERCOLES, JUEVES, VIERNES;
	LUNES(1,"Monday"), MARTES(2,"Tuesday"), MIERCOLES(3,"Wednesday"), JUEVES(4,"Thursday"), VIERNES(5,"Friday");
	private int idDia;
	private String name;
	
	private Dias(int idDia, String name) {
		this.idDia = idDia;
		this.name = name;
	}

	public int getIdDia() {
		return idDia;
	}

	public String getName() {
		return name;
	}

	
	
}
