package com.everis.springbootjpaactividades.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.everis.springbootjpaactividades.model.Actividad;

@Repository
public interface ActividadRepository extends JpaRepository<Actividad, Integer> {

}
