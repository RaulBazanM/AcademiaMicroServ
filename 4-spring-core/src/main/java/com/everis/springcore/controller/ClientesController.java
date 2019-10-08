package com.everis.springcore.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.everis.springcore.model.Cliente;
import com.everis.springcore.service.ClienteService;

@RestController
@RequestMapping("/clientes")
public class ClientesController {
	
	//Autocablea, inyeccion de dependencia --> crea un sólo objeto static para todos los usuarios, en lugar de crear un objeto por cada usuario (consume memoria)
	//Busca spring en su contexto un objeto de este tipo.
	@Autowired 
	private ClienteService clienteService;
	//private ClienteService clienteService = new ClienteService(); //se está invocando al constructor, en este caso el constructor Default

	@GetMapping("/")
	public List<Cliente> listar(){
		return clienteService.listar();
	}
	
	@PostMapping("/")
	public boolean insertar(@RequestBody Cliente cliente) { //el Mapping inserta JSON, y la etiqueta depende del nombre de la variable en la clase Cliente
		return clienteService.insertar(cliente);
	}
	
	@PutMapping("/")
	public boolean actualizar(@RequestBody Cliente cliente) {
		return clienteService.actualizar(cliente);
	}
	
	@DeleteMapping("/{idCliente}")
	public boolean eliminar(@PathVariable int idCliente) {
		return clienteService.eliminar(idCliente);
	}
	
	@GetMapping("/exportar")
	public ResponseEntity<Object> exportarXLSX() throws FileNotFoundException {
		String rutaArchivo = "c:/temp/clientes.xlsx";
		clienteService.exportarXLS(rutaArchivo);
		File archivo = new File(rutaArchivo);
		InputStreamResource resource = new InputStreamResource(new FileInputStream(archivo));
		ResponseEntity<Object> respuesta = ResponseEntity.ok().contentLength(archivo.length())
				.contentType(MediaType.parseMediaType("vnd.openxmlformats-officedocument.spreadsheetml.sheet")).body(resource);
		return respuesta;
	}
}
