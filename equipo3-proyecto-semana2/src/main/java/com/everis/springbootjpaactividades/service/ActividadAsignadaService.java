package com.everis.springbootjpaactividades.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.springbootjpaactividades.model.Actividadasignada;
import com.everis.springbootjpaactividades.repository.ActividadAsignadaRepository;


@Service
public class ActividadAsignadaService {

	@Autowired
	private ActividadAsignadaRepository actividadasignadaRepository;
	
	 

	public List<Actividadasignada> listar() {
		// TODO Auto-generated method stub
		return actividadasignadaRepository.findAll();
	}



	public Actividadasignada actualizar(Actividadasignada actividadasignada) {
		// TODO Auto-generated method stub
		return actividadasignadaRepository.save(actividadasignada);
	}



	public Actividadasignada insertar(Actividadasignada actividadasignada) {
		// TODO Auto-generated method stub
		return actividadasignadaRepository.save(actividadasignada);



	}



	public void eliminar(int idasignaturaasignada) {
		// TODO Auto-generated method stub
		actividadasignadaRepository.deleteById(idasignaturaasignada);
	}
			
}
