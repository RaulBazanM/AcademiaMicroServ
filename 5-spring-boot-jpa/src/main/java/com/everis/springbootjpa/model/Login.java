package com.everis.springbootjpa.model;
// Generated 17/09/2019 03:05:07 PM by Hibernate Tools 5.2.12.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Login generated by hbm2java
 */
@Entity
@Table(name = "login", catalog = "cintegracion")
public class Login implements java.io.Serializable {

	private Integer idlogin;
	private String usuario;
	private String password;
	private String nombre;
	private String apaterno;
	private String amaterno;

	public Login() {
	}

	public Login(String usuario, String password, String nombre, String apaterno, String amaterno) {
		this.usuario = usuario;
		this.password = password;
		this.nombre = nombre;
		this.apaterno = apaterno;
		this.amaterno = amaterno;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idlogin", unique = true, nullable = false)
	public Integer getIdlogin() {
		return this.idlogin;
	}

	public void setIdlogin(Integer idlogin) {
		this.idlogin = idlogin;
	}

	@Column(name = "usuario", nullable = false, length = 45)
	public String getUsuario() {
		return this.usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	@Column(name = "password", nullable = false, length = 45)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "nombre", nullable = false, length = 45)
	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Column(name = "apaterno", nullable = false, length = 45)
	public String getApaterno() {
		return this.apaterno;
	}

	public void setApaterno(String apaterno) {
		this.apaterno = apaterno;
	}

	@Column(name = "amaterno", nullable = false, length = 45)
	public String getAmaterno() {
		return this.amaterno;
	}

	public void setAmaterno(String amaterno) {
		this.amaterno = amaterno;
	}

}
