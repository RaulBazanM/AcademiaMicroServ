package com.everis.usuariosexceptionsrest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.usuariosexceptionsrest.model.Usuario;
import com.everis.usuariosexceptionsrest.repository.UsuarioRepository;

@Service
public class UsuarioService {
	
	@Autowired
	private UsuarioRepository  usuarioReporsitory;
	
	public List<Usuario> findAll(){
		return usuarioReporsitory.findAll();
	}
	
	public Usuario save(Usuario usuario) {
		return usuarioReporsitory.save(usuario);
	}
	
	public Usuario findById(int id) {
		return usuarioReporsitory.findById(id);
	}
	
	public Usuario deleteById(int id) {
		return usuarioReporsitory.deleteById(id);
	}

}
