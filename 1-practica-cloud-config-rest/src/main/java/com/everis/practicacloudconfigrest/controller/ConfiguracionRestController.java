package com.everis.practicacloudconfigrest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.everis.practicacloudconfigrest.model.Configuracion;

@RestController
@RequestMapping("/calcularTotal")
public class ConfiguracionRestController {
	
//	@Value("${parametros.resultado}")
//	private double descuento;
	
	@Autowired
	private Configuracion configuracion;
	
	@GetMapping("/{cantidad}")
	public double calcularResultado(@PathVariable double cantidad) {
//		return cantidad-(cantidad*descuento/100);
		return cantidad-(cantidad*configuracion.getDescuento()/100);
	}
}
