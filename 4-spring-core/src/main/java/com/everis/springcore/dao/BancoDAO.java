package com.everis.springcore.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.everis.springcore.model.Banco;

@Repository
public class BancoDAO {

	private static List<Banco> bancos = new ArrayList<Banco>();
	static int n = 1;
	
	public List<Banco> listar(){
		return bancos;
	}
	
	public void insertar(Banco banco) {
		banco.setIdBanco(n);
		bancos.add(banco);
		n++;
	}
	
	public Banco buscar(int idBanco) {
		for(Banco banco : bancos) {
			if(banco.getIdBanco() == idBanco) {
				return banco;
			}
		}
		return null;
	}
	
	public boolean actualizar(Banco banco) {
		Banco encontrado = buscar(banco.getIdBanco());
		if(encontrado != null) {
			encontrado.setNombre(banco.getNombre());
			encontrado.setDierccion(banco.getDierccion());
			return true;
		}
		else {
			return false;
		}
	}
	
	public boolean eliminar(int idBanco) {
		Banco encontrado = buscar(idBanco);
		if(encontrado != null) {
			bancos.remove(encontrado);
			return true;
		}
		else {
			return false;
		}
	}
	
}
