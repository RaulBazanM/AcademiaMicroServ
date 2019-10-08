package com.everis.springbootjpaactividades.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.springbootjpaactividades.model.Empleado;
import com.everis.springbootjpaactividades.repository.EmpleadoRepository;

@Service
public class EmpleadoService {
	
	@Autowired
	private EmpleadoRepository empleadoRepository;
	
	public List<Empleado> listar(){
		return empleadoRepository.findAll();
	}
	
	public Empleado insertar(Empleado empleado) {
		return empleadoRepository.save(empleado);
	}
	
	public Empleado actualizar(Empleado empleado) {
		return empleadoRepository.save(empleado);
	}
	
	public boolean eliminar(int id) {
		if(empleadoRepository.existsById(id)) {
			empleadoRepository.deleteById(id);
			return true;
		}
		else {
			return false;
		}
	}
}
