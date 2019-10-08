package com.everis.springbootjpa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.everis.springbootjpa.model.Login;
import com.everis.springbootjpa.service.LoginService;

@RestController
@RequestMapping("logins")
public class LoginController {
	
	@Autowired //Inyectar un objeto que existe en el contexto de Spring
	private LoginService loginService;
	
	@GetMapping("/")
	public List<Login> listar(){
		return loginService.listar();
	}
	
	@PostMapping("/") //Verbos HTTP
	public Login insertar(@RequestBody Login login) {
		return loginService.insertar(login); 
	}
	
	@DeleteMapping("/{idLogin}")
	public boolean eliminar(@PathVariable int idLogin) {
		return loginService.eliminar(idLogin);
	}
	
	@PutMapping("/")
	public Login actualizar(@RequestBody Login login) {
		return loginService.actualizar(login);
	}
	

}
