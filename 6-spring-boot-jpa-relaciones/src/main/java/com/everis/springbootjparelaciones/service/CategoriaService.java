package com.everis.springbootjparelaciones.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.springbootjparelaciones.model.Categoria;
import com.everis.springbootjparelaciones.repository.CategoriaRepository;

@Service
public class CategoriaService {
	
	@Autowired
	private CategoriaRepository categoriaRepository;
	
	public List<Categoria> listar(){
		return categoriaRepository.findAll();
	}
	
	public Categoria insertar(Categoria categoria) {
		return categoriaRepository.save(categoria);
	}
	
	public Categoria actualizar(Categoria categoria) {
		return categoriaRepository.save(categoria);
	}

}
