package com.everis.springbootjpa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.springbootjpa.model.Login;
import com.everis.springbootjpa.repository.LoginRepository;

@Service
public class LoginService {
	
	@Autowired
	private LoginRepository loginRepository;
	
	public List<Login> listar(){
		return loginRepository.findAll(); //JpaRepository SELECT * FROM categoria
		
	}
	
	public Login insertar(Login login){
		return loginRepository.save(login); //INSERT INTO
	}
	
	public Login actualizar(Login login){
		return loginRepository.save(login);
	}
	
	public boolean eliminar(int idLogin){
		try{
			loginRepository.deleteById(idLogin);
			return true;
			//el metodo existById regresa un boolean
		}
		catch(Exception e){
			return false;
		}
	}

}
