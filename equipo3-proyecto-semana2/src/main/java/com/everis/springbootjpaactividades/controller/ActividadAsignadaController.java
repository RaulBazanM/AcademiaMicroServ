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


import com.everis.springbootjpaactividades.model.Actividadasignada;
import com.everis.springbootjpaactividades.service.ActividadAsignadaService;


@RestController
@RequestMapping("actividadasiganada")
public class ActividadAsignadaController {

	@Autowired
	private ActividadAsignadaService actvidadasignadaservice;
	
	@GetMapping("/")
	public List<Actividadasignada> listar(){
		return  actvidadasignadaservice.listar();
	}
	
	@PostMapping("/")
	public Actividadasignada insertar(@RequestBody Actividadasignada actividadasignada) {
		return actvidadasignadaservice.insertar(actividadasignada);
	}
	
	@PutMapping("/")
	public Actividadasignada actualizar(@RequestBody Actividadasignada actividadasignada) {
		return actvidadasignadaservice.actualizar(actividadasignada);
	}
	


	@DeleteMapping("/{idasignaturaasignada}")
	public void eliminar(@PathVariable int idasignaturaasignada) {
		 actvidadasignadaservice.eliminar(idasignaturaasignada);
	}
	
}
