package com.everis.service;

import java.util.List;

import com.everis.dao.ProductoDAO;
import com.everis.poo.model.Producto;

public class ProductoService {
	
private ProductoDAO productoDAO = new ProductoDAO();
	
	public List<Producto> listar(){
		return productoDAO.listar();
	}
	
	public boolean insertar(Producto producto) {
		List<Producto> listaActual = listar();
		productoDAO.insertar(producto);
			if(producto.getIdProducto()>0) {
				return true;
			}
	
		
		return false;
	}
	
	public Producto buscar (int idProducto) {
		return productoDAO.buscar(idProducto);
	}
	
	public boolean actualizar (Producto producto) {
		return productoDAO.actualizar(producto);
	}
	
	public boolean eliminar (int idProducto) {
		return productoDAO.eliminar(idProducto);
	}


}
