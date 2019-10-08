package com.everis.usuariosexceptionsrest.model;

import java.util.Date;

import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

public class Usuario {
	private Integer id;
	
	@Size(min=3, message="Nombre debe tener al menos 2 caracteres")
	private String nombre;
	
	@Past
	private Date fechaNacimiento;

	public Usuario(Integer id, @Size(min = 3, message = "Nombre debe tener al menos 2 caracteres") String nombre,
			@Past Date fechaNacimiento) {
		this.id = id;
		this.nombre = nombre;
		this.fechaNacimiento = fechaNacimiento;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	
	

}
