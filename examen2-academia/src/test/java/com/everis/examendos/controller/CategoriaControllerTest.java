package com.everis.examendos.controller;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.everis.examendos.Examen2AcademiaApplication;
import com.everis.examendos.model.Categoria;
import com.everis.examendos.model.Producto;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = Examen2AcademiaApplication.class)
@WebAppConfiguration
public class CategoriaControllerTest {

	private MockMvc mvc; //simula request y response
	
	@Autowired
	private WebApplicationContext webApplicationContext;
	
	@Before
	public void setUp() {
		mvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build(); 
	}
	
	@Test
	public void testListar() throws Exception {
		String url = "/categorias/";
		MvcResult resultado = mvc.perform(MockMvcRequestBuilders.get(url)).andReturn(); 
		int status = resultado.getResponse().getStatus();
		assertTrue(status == 200);
		String jsonRespuesta = resultado.getResponse().getContentAsString();
		ObjectMapper mapper = new ObjectMapper();
		List<Categoria> categorias = mapper.readValue(jsonRespuesta, new TypeReference<List<Categoria>>() {});
		assertNotNull(categorias); //valida que se cree la lista
		assertTrue(categorias.size()>0); //valida que haya al menos 1 objeto
		for(Categoria categoria: categorias) {
			assertTrue(categoria.getNombre() != null);//valida que cada categoría tenga nombre
		}
	}

}
