package com.everis.poo.dao;

import java.util.ArrayList;
import java.util.List;

import com.everis.poo.model.Cliente;

public class ClienteDAO {
	
	private static List<Cliente> clientes = new ArrayList<Cliente>(); //No hay base de datos, almacenamos en una lista
	
	public List<Cliente> listar(){ //es como get-set pero para listas, no javabean
		return clientes;
	}
	
	public void insertar(Cliente cliente) {
		clientes.add(cliente);
	}
	
	public Cliente buscar(int idCliente) {
		
		/*for (int i = 0; i < clientes.size(); i++) {  //Aquí se tiene control del indice de cada elemento
			Cliente cliente = clientes.get(i);
			if(cliente.getIdCliente() == idCliente) {
				return cliente;
			}
			
		}*/
		
		for (Cliente cliente : clientes) {
			if(cliente.getIdCliente() == idCliente) {
				return cliente;
			}
		}
		return null;
	}
	
	public boolean actualizar(Cliente cliente) {
		Cliente encontrado = buscar(cliente.getIdCliente());
		if(encontrado != null) {
			encontrado.setNombre(cliente.getNombre());
			encontrado.setApaterno(cliente.getApaterno());
			encontrado.setAmaterno(cliente.getAmaterno());;
			encontrado.setRfc(cliente.getRfc());;
			return true;
		}
		else {
			return false;
		}
	}
	
	public boolean eliminar(int idCliente) {
		Cliente encontrado = buscar(idCliente);
		if(encontrado != null) {
			clientes.remove(encontrado);
			return true;
		}
		else {
			return false;
		}
	}
}
