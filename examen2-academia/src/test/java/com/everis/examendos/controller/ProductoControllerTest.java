package com.everis.examendos.controller;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
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
public class ProductoControllerTest {

	private MockMvc mvc; //simula request y response
	
	@Autowired
	private WebApplicationContext webApplicationContext;
	
	@Before
	public void setUp() {
		mvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build(); 
	}
	
	@Test
	public void testListar() throws Exception {
		String url = "/productos/";
		MvcResult resultado = mvc.perform(MockMvcRequestBuilders.get(url)).andReturn(); 
		int status = resultado.getResponse().getStatus();
		assertTrue(status == 200);
		String jsonRespuesta = resultado.getResponse().getContentAsString();
		ObjectMapper mapper = new ObjectMapper();
		List<Producto> productos = mapper.readValue(jsonRespuesta, new TypeReference<List<Producto>>() {});
		assertNotNull(productos); //valida que se cree la lista
		assertTrue(productos.size()>0); //valida que haya al menos 1 objeto
		for(Producto producto: productos) {
			assertTrue(producto.getNombre() != null);//valida que cada producto tenga nombre
		}
	}

	@Test
	public void testBuscar() throws Exception {
		String url = "/productos/playera";
		MvcResult resultado = mvc.perform(MockMvcRequestBuilders.get(url)).andReturn(); 
		int status = resultado.getResponse().getStatus();
		assertTrue(status == 200);
		String jsonRespuesta = resultado.getResponse().getContentAsString();
		ObjectMapper mapper = new ObjectMapper();
		List<Producto> productosFiltrados = mapper.readValue(jsonRespuesta, new TypeReference<List<Producto>>() {});
		assertNotNull(productosFiltrados); //valida que se cree la lista
		assertTrue(productosFiltrados.size()>0); //valida que haya al menos 1 objeto
	}

	@Test
	public void testInsertar() throws Exception {
		String url = "/productos/";
		
		Categoria categoria = new Categoria();
		categoria.setIdcategoria(1);
		
		Producto producto = new Producto();
		producto.setNombre("Nombre Producto Prueba");
		producto.setPrecio(200);
		producto.setDescripcion("Descripcion Producto prueba");
		producto.setCategoria(categoria);
		
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(producto);
		MvcResult resultado = mvc.perform(MockMvcRequestBuilders.post(url).contentType(MediaType.APPLICATION_JSON_VALUE).content(json)).andReturn();
		int status = resultado.getResponse().getStatus();
		assertTrue(status == 200); 
		String jsonRespuesta = resultado.getResponse().getContentAsString();
		Producto productoInsertado = mapper.readValue(jsonRespuesta, Producto.class); //Convierte json a objeto
		assertTrue(productoInsertado.getIdproducto()>0);
	}

	@Test
	public void testActualizar() throws Exception {
		String url = "/productos/";
		
		Categoria categoria = new Categoria();
		categoria.setIdcategoria(1);
		
		Producto producto = new Producto();
		producto.setNombre("Nombre Producto Prueba Act");
		producto.setPrecio(200);
		producto.setDescripcion("Descripcion Producto prueba Act");
		producto.setCategoria(categoria);
		producto.setIdproducto(2);
		
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(producto);
		MvcResult resultado = mvc.perform(MockMvcRequestBuilders.post(url).contentType(MediaType.APPLICATION_JSON_VALUE).content(json)).andReturn();
		int status = resultado.getResponse().getStatus();
		assertTrue(status == 200); 
		String jsonRespuesta = resultado.getResponse().getContentAsString();
		Producto productoActualizado = mapper.readValue(jsonRespuesta, Producto.class); //Convierte json a objeto
		assertTrue(productoActualizado.getNombre().equals("Nombre Producto Prueba Act"));
	}

	@Test
	public void testEliminar() throws Exception {
		String url = "/productos/3";
		MvcResult resultado = mvc.perform(MockMvcRequestBuilders.delete(url)).andReturn();
		int status = resultado.getResponse().getStatus();
		assertTrue(status == 200);
		String json = resultado.getResponse().getContentAsString();
		assertTrue(json.equals("true"));
	}

}
