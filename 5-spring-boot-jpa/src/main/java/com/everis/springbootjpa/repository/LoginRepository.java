package com.everis.springbootjpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.everis.springbootjpa.model.Categoria;
import com.everis.springbootjpa.model.Login;

@Repository
public interface LoginRepository extends JpaRepository<Login, Integer>{

}
