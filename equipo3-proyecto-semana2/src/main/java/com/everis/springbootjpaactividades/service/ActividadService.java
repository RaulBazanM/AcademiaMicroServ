package com.everis.springbootjpaactividades.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.springbootjpaactividades.model.Actividad;
import com.everis.springbootjpaactividades.repository.ActividadRepository;

@Service
public class ActividadService {
	
	@Autowired
	private ActividadRepository actividadRepository;
	
	public List<Actividad> listar(){
		return actividadRepository.findAll();
	}
	
	public Actividad insertar(Actividad actividad){
		return actividadRepository.save(actividad);
	}
	
	public Actividad actualizar(Actividad actividad){
		return actividadRepository.save(actividad);
	}
	
	public boolean eliminar(int idActividad){
		if(actividadRepository.existsById(idActividad)) {
			actividadRepository.deleteById(idActividad);
			return true;
		}else
			return false;
	}
}
