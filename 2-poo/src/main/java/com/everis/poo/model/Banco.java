package com.everis.poo.model;

public class Banco {
	private int idBanco;
	private String nombre;
	private String dierccion;
	
	@Override
	public String toString() {
		return "Banco [idBanco=" + idBanco + ", nombre=" + nombre + ", dierccion=" + dierccion + "]";
	}
	public int getIdBanco() {
		return idBanco;
	}
	public void setIdBanco(int idBanco) {
		this.idBanco = idBanco;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDierccion() {
		return dierccion;
	}
	public void setDierccion(String dierccion) {
		this.dierccion = dierccion;
	}
	
	
}
