import java.util.Random;

//JavaBean, POJO, Value Objects, modelo o entities
public class Cuenta {
	//private -> sólo se puede acceder a los atributos desde la propia clase
	private String numero;
	private TipoCuenta tipoCuenta;
	private double saldo;
	
	public Cuenta() {
		this.saldo = 200.0;
		this.numero = new Random(99999).nextDouble() + "";
		this.tipoCuenta = TipoCuenta.DEBITO;
	}
	
	public Cuenta(String numero) {
		this.saldo = 100.0;
		this.numero = numero;
		this.tipoCuenta = TipoCuenta.DEBITO;
	}
	
	//Constructor, no tiene tipo de retorno y se debe llamar igual que la clase
	public Cuenta(String numero, TipoCuenta tipoCuenta) {
		//Inicializar los atributos de la clase
		this.saldo = 0.0;
		this.numero = numero;
		this.tipoCuenta = tipoCuenta;
	}
	
	@Override
	public String toString() {
		return "Cuenta [numero=" + numero + ", tipoCuenta=" + tipoCuenta + ", saldo=" + saldo + "]";
	}

	public String getNumero() {
		return numero;
	}
	
	public void setTipoCuenta(TipoCuenta tipoCuenta) { //siempre es void porque sólo modifica, no regresa valor
		this.tipoCuenta = tipoCuenta;
	}
	
	public TipoCuenta getTipoCuenta() {
		return tipoCuenta;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
	
	
}
