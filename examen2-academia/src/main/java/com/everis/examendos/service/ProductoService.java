package com.everis.examendos.service;
 
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.examendos.model.Producto;
import com.everis.examendos.repository.ProductoRepository;

@Service
public class ProductoService {

	@Autowired
	private ProductoRepository productoRepository;
	
	public List<Producto> listar(){
		return productoRepository.findAll();
	}
	
	public List<Producto> buscar(String palabra){
		List<Producto> productosTodos = productoRepository.findAll();
		List<Producto> productosFiltrados = new ArrayList<Producto>();
		for(Producto producto : productosTodos) {
			if(producto.getNombre().contains(palabra)) {
				productosFiltrados.add(producto);
			}
		}
		return productosFiltrados;
	}
	
	public Producto insertar(Producto producto) {
		return productoRepository.save(producto);
	}
	
	public Producto actualizar(Producto producto) {
		return productoRepository.save(producto);
	}
	
	public boolean eliminar(int idProducto) {
		if(productoRepository.existsById(idProducto)) {
			productoRepository.deleteById(idProducto);
			return true;
		}
		else {
			return false;
		}
	}
}
