package com.everis.springcloudexchange.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.everis.springcloudexchange.model.ExchangeValue;

@Repository
public interface ExchangeValueRepository extends JpaRepository<ExchangeValue, Long>{
	
	//filtra la consulta por dos atributos (columnas) en este caso por From y To
	ExchangeValue findByFromAndTo(String from, String to); //hace un where en el select

}
