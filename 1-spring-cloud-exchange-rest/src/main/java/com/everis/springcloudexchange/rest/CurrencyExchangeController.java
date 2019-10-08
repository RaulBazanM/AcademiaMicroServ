package com.everis.springcloudexchange.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.everis.springcloudexchange.model.ExchangeValue;
import com.everis.springcloudexchange.responses.ExchangeValueResponse;
import com.everis.springcloudexchange.service.ExchangeValueService;

@RestController
public class CurrencyExchangeController {
	
	@Autowired
	private ExchangeValueService exchangeValueService;
	
	//Entorno donde se ejecuta la aplicación (springframework.core.env)
	@Autowired
	private Environment enviroment;
	
	
	@GetMapping("/currency-exchange/from/{from}/to/{to}")
	public ExchangeValueResponse retrieveExchangeValue(@PathVariable String from, @PathVariable String to) {
		
		ExchangeValueResponse response = new ExchangeValueResponse();
		try {
			ExchangeValue valor = exchangeValueService.findByFromAndTo(from, to);
			if(valor == null) {
				response.setSuccesful(false);
				response.setMessage("Factor no encontrado");
				return response;
			}
			valor.setPort(Integer.parseInt(enviroment.getProperty("local.server.port"))); //indica la instancia que se está atendiendo
			response.setValue(valor);
			response.setSuccesful(true);
			response.setMessage("Factor recuperado exitosamente");
		}
		catch (Exception e){
			response.setSuccesful(false);
			response.setMessage(e.getMessage());
		}
		return response;
	}
}
