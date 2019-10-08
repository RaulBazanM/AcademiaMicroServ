package com.everis.poo.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import com.everis.poo.model.Banco;

public class BancoServiceTest {
	
	private BancoService servicio = new BancoService();

	@Test
	public void testListar() {
		Banco banco = new Banco();
		banco.setNombre("Santander");
		banco.setDierccion("Churubusco 56");
		servicio.insertar(banco);
		
		List<Banco> bancos = servicio.listar();
		assertTrue(bancos.size()>0);
		for(Banco objBanco : bancos) {
			 System.out.println(objBanco);
		 }
	}

	@Test
	public void testInsertar() {
		Banco banco = new Banco();
		banco.setNombre("BBVA");
		banco.setDierccion("Av. Tlahuac 729");
		boolean exito = servicio.insertar(banco);
		assertTrue(exito);
		
		Banco banco1 = new Banco();
		banco1.setNombre("BBVA");
		banco1.setDierccion("Division del Norte 76");
		exito = servicio.insertar(banco);
		assertTrue(!exito);
	}

	@Test
	public void testBuscar() {
		Banco banco = new Banco();
		banco.setNombre("HSBC");
		banco.setDierccion("Insurgentes 119");
		servicio.insertar(banco);
		Banco encontrado = servicio.buscar(2);
		assertNotNull(encontrado);
	}

	@Test
	public void testActualizar() {
		Banco banco = new Banco();
		banco.setNombre("Inbursa");
		banco.setDierccion("Churubusco 56");
		servicio.insertar(banco);
		
		Banco banco1 = new Banco();
		banco1.setNombre("BBVA");
		banco1.setDierccion("Division del Norte 76");
		banco1.setIdBanco(1);
		boolean exito = servicio.actualizar(banco1);
		assertTrue(exito);
	}

	@Test
	public void testEliminar() {
		Banco banco = new Banco();
		banco.setNombre("Banamex");
		banco.setDierccion("Reforma 111");
		servicio.insertar(banco);
		
		boolean exito = servicio.eliminar(1);
		assertTrue(exito);
	}

}
