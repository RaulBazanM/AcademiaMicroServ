package com.everis.poo.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import com.everis.poo.model.Cliente;

public class ClienteServiceTest2 {
	
	private ClienteService servicio = new ClienteService();

	@Test
	public void testInsertarListar() {
		
		Cliente cliente = new Cliente();
		 cliente.setIdCliente(1);
		 cliente.setNombre("Raúl");
		 cliente.setApaterno("Bazán");
		 cliente.setAmaterno("Mendoza");
		 cliente.setRfc("BAMR");
		 boolean exito = servicio.insertar(cliente);
		 assertTrue(exito);
		 
		 Cliente cliente2 = new Cliente();
		 cliente2.setIdCliente(2);
		 cliente2.setNombre("Raúl");
		 cliente2.setApaterno("Bazán");
		 cliente2.setAmaterno("Mendoza");
		 cliente2.setRfc("BAMR");
		 exito = servicio.insertar(cliente2);
		 assertTrue(!exito);
		 
		 List<Cliente> clientes = servicio.listar();
		 assertTrue(clientes.size() > 0);
		 for(Cliente objCliente : clientes) {
			 System.out.println(objCliente);
		 }
		
	}

	/*@Test
	public void testInsertar() {
		fail("Not yet implemented");
	}*/

	@Test
	public void testBuscar() {
		testInsertarListar();
		Cliente encontrado = servicio.buscar(1);
		assertNotNull(encontrado);
	}

	@Test
	public void testActualizar() {
		testInsertarListar();
		Cliente objCliente = new Cliente();
		 objCliente.setIdCliente(1);
		 objCliente.setNombre("Mike");
		 objCliente.setApaterno("Gris");
		 objCliente.setAmaterno("Fly");
		 objCliente.setRfc("GRFM");
		boolean exito = servicio.actualizar(objCliente);
		assertTrue(exito);
	}

	@Test
	public void testEliminar() {
		testInsertarListar();
		boolean exito = servicio.eliminar(1);
		assertTrue(exito);
	}

}
