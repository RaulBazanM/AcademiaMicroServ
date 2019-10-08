package com.everis.springcloudconfigrest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.everis.springcloudconfigrest.model.Configuracion;

@RestController
public class ConfiguracionRestController {
	
	//Autowired, pero sólo trae un valor, no un objeto
	@Value("${config.usuario}") //revisar GitHub rest default
	private String usuario;
	
	@Autowired
	private Configuracion configuracion; 
	
	@GetMapping("/usuario")
	public String obtenerUsuario() {
		return usuario;
	}
	
	@GetMapping("/configuracion")
	public String obtenerConfiguracion() {
		return configuracion.toString();
	}
}
