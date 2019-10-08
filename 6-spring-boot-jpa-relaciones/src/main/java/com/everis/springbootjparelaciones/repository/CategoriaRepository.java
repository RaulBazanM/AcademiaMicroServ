package com.everis.springbootjparelaciones.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.everis.springbootjparelaciones.model.Categoria;

@Repository
public interface CategoriaRepository extends JpaRepository<Categoria, Integer>{ //Categoría corresponde al tipo de objeto, Integer al tipo de dato al que hace referencia la llave primaria

}
