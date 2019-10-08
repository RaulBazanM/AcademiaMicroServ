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

import com.everis.springbootjpaactividades.model.Actividad;
import com.everis.springbootjpaactividades.service.ActividadService;

@RestController
@RequestMapping("actividades")
public class ActividadController {
	
	@Autowired
	private ActividadService actividadService;
	
	@GetMapping("/")
	public List<Actividad> listar(){
		return actividadService.listar();
	}
	
	@PostMapping("/")
	public Actividad insertar(@RequestBody Actividad actividad){
		return actividadService.insertar(actividad);
	}
	
	@DeleteMapping("/{idActividad}")
	public boolean eliminar(@PathVariable int idActividad) {
		return actividadService.eliminar(idActividad);
	}
	
	@PutMapping("/")
	public Actividad actualizar(@RequestBody Actividad actividad){
		return actividadService.actualizar(actividad);
	}
}
