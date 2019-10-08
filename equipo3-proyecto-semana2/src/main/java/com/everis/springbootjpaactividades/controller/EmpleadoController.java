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

import com.everis.springbootjpaactividades.model.Empleado;
import com.everis.springbootjpaactividades.service.EmpleadoService;

@RestController
@RequestMapping("empleados")
public class EmpleadoController {
	
	@Autowired
	private EmpleadoService empleadoService;
	
	@GetMapping("/")
	public List<Empleado> listar(){
		return empleadoService.listar();
	}
	
	@PostMapping("/")
	public Empleado insertar(@RequestBody Empleado empleado) {
		return empleadoService.insertar(empleado);
	}
	
	@PutMapping("/")
	public Empleado actualizar(@RequestBody Empleado empleado) {
		return empleadoService.actualizar(empleado);
	}

	@DeleteMapping("/{idEmpleado}")
	public boolean eliminar(@PathVariable int idEmpleado) {
		return empleadoService.eliminar(idEmpleado);
	}
}
