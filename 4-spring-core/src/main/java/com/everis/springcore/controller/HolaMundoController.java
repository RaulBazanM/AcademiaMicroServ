package com.everis.springcore.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.everis.springcore.model.Producto;

@RestController // Lo configura como servlet y todos en esa etiqueta están en el mismo servidor
public class HolaMundoController {

	@GetMapping("/saludar") // Invoca doGet y establece URL, es una ruta
	public String saludar() {
		return "Hola Spring Boot";
	}

	@PostMapping("/sumar/{x}/{y}") // Invocamos doPost con parámetros y establece URL
	public double sumar(@PathVariable double x, @PathVariable double y) { // Agregar variable desde el path
		return x + y;
	}

	// Recibir JSON
	@PutMapping("/validar")
	public String validar(@RequestBody Producto producto) {
		return producto.toString();
	}

	@DeleteMapping("/eliminar/{idProducto}")
	public void eliminar(@PathVariable("idProducto") int id) { // como el parámetro no coincide con el del URL, se
																// agrega este último al @PathVariable
		System.out.println("Eliminando producto: " + id);
	}

	@GetMapping("/enviar")
	public String enviar(@RequestParam String mensaje) {
		return "El mensaje fue: " + mensaje;
	}

	@GetMapping("/descargar") // Regresar respuesta específica
	public ResponseEntity<Object> descargar() throws FileNotFoundException {
		String imagen = "c:/temp/imagen.jpg";
		File archivo = new File(imagen);
		InputStreamResource resource = new InputStreamResource(new FileInputStream(archivo));

		ResponseEntity<Object> respuesta = ResponseEntity.ok().contentLength(archivo.length())
				.contentType(MediaType.IMAGE_JPEG).body(resource);
		return respuesta;
	}
}
