package com.everis.filtering.controller;

import java.util.Date;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.everis.filtering.model.Usuario;

@RestController
public class UsuarioController {
	
	@GetMapping("/usuario")
	public Usuario consultar() {
		return new Usuario(1, "tecgurus", "tecguru$", new Date());
	}

}
