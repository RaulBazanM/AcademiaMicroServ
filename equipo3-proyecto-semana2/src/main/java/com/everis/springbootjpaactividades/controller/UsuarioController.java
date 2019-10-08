package com.everis.springbootjpaactividades.controller;

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

import com.everis.springbootjpaactividades.model.Usuario;
import com.everis.springbootjpaactividades.service.UsuarioService;

@RestController
@RequestMapping("usuarios")
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping("/")
	public List<Usuario> listar(){
		return usuarioService.listar();
	}
	
	@PostMapping("/")
	public Usuario insertar(@RequestBody Usuario usuario) {
		return usuarioService.insertar(usuario);
	}
	
	@PutMapping("/")
	public Usuario actualizar(@RequestBody Usuario usuario) {
		return usuarioService.actualizar(usuario);
	}

	@DeleteMapping("/{idUsuario}")
	public boolean eliminar(@PathVariable int idUsuario) {
		return usuarioService.eliminar(idUsuario);
	}
}
