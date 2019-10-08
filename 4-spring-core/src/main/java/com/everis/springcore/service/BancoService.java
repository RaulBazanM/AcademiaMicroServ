package com.everis.springcore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.springcore.dao.BancoDAO;
import com.everis.springcore.model.Banco;

@Service
public class BancoService {
	
	@Autowired
	private BancoDAO bancoDAO = new BancoDAO();
	
	public List<Banco> listar(){
		return bancoDAO.listar();
	}
	
	public boolean insertar(Banco banco) {
		String nombre = banco.getNombre();
		List<Banco> bancos = listar();
		for (Banco banco1 : bancos) {
			if(banco1.getNombre().equals(nombre)) {
				return false;
			}
		}
		bancoDAO.insertar(banco);
		return true;
	}
	
	public Banco buscar(int idBanco) {
		return bancoDAO.buscar(idBanco);
	}

	public boolean actualizar(Banco banco) {
		return bancoDAO.actualizar(banco);
	}
	
	public boolean eliminar (int idBanco) {
		return bancoDAO.eliminar(idBanco);
	}
}
