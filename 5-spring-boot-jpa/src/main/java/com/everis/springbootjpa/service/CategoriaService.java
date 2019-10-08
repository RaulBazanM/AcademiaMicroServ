package com.everis.springbootjpa.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.springbootjpa.model.Categoria;
import com.everis.springbootjpa.repository.CategoriaRepository;

@Service
public class CategoriaService {
	
	//Obtiene un objeto del contexto de Spring (sustituye al new)
	//Obtiene siempre la misma instancia (Singleton)
	@Autowired 
	private CategoriaRepository categoriaRepository;
	
	public List<Categoria> listar(){
		return categoriaRepository.findAll(); //JpaRepository SELECT * FROM categoria
		
	}
	
	public Categoria insertar(Categoria categoria){
		return categoriaRepository.save(categoria); //INSERT INTO
	}
	
	public Categoria actualizar(Categoria categoria){
		return categoriaRepository.save(categoria);
	}
	
	public boolean eliminar(int idCategoria){
		try{
			categoriaRepository.deleteById(idCategoria);
			return true;
			//el metodo existById regresa un boolean
		}
		catch(Exception e){
			return false;
		}
	}

}
