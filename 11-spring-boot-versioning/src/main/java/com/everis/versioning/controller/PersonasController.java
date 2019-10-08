package com.everis.versioning.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.everis.versioning.model.PersonaV1;
import com.everis.versioning.model.PersonaV2;

@RestController
public class PersonasController {
	
	//Versionamiento por URI - Twitter
	@GetMapping("/v1/persona")
	public PersonaV1 personaV1() {
		return new PersonaV1("Miguel Martinez");
	}
	
	@GetMapping("/v2/persona")
	public PersonaV2 personaV2() {
		
		return new PersonaV2("Miguel", "Martinez", "Hernandez");
	}
	
	//QueryString -> Amazon
	@GetMapping(value="/persona/param", params="version=1")
	public PersonaV1 personaParamv1() {
		return new PersonaV1("Miguel Martinez");
	}
	
	@GetMapping(value="/persona/param", params="version=2")
	public PersonaV2 personaParamv2() {
		return new PersonaV2("Miguel", "Martinez", "Hernandez");
	}
	
	//Headers -> Microsoft (Postman, por que el header no se envía por la URL
	@GetMapping(value="/persona/header", headers="X-API-VERSION=1")
	public PersonaV1 personaHeaderv1() {
		return new PersonaV1("Miguel Martinez");
	}
	
	@GetMapping(value="/persona/header", headers="X-API-VERSION=2")
	public PersonaV2 personaHeaderv2() {
		return new PersonaV2("Miguel", "Martinez", "Hernandez");
	}
	
	//MediaType -> GitHub
	@GetMapping(value="/persona/mediatype", produces="application/vnd.com.everis.app-v1+json")
	public PersonaV1 personaMediaTypev1() {
		return new PersonaV1("Miguel Martinez");
	}
	
	@GetMapping(value="/persona/mediatype", produces="application/vnd.com.everis.app-v2+json")
	public PersonaV2 personaMediaTypev2() {
		return new PersonaV2("Miguel", "Martinez", "Hernandez");
	}

}
