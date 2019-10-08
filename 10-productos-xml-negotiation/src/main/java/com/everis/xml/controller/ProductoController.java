package com.everis.xml.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.everis.xml.model.Producto;

@RestController
public class ProductoController {
	
	private static List<Producto> productos = new ArrayList<Producto>();
	
	//Constructor estático, inicializar todos los atributos estáticos
	static {
		productos.add(new Producto(1, "Producto 1"));
		productos.add(new Producto(2, "Producto 2"));
		productos.add(new Producto(3, "Producto 3"));
		productos.add(new Producto(4, "Producto 4"));
	}
	
	@GetMapping(value="/productos/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
	public Producto buscarProducto(@PathVariable int id) {
		return productos.get(id);
	}
	
	@GetMapping("/productos")
	//public List<Producto> listar(){
	public List<Producto> listar(){
		return productos;
	}

}
