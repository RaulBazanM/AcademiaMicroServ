package com.everis.jee.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.everis.poo.model.Producto;
import com.everis.service.ProductoService;

/**
 * Servlet implementation class ProductoController
 */
public class ProductoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	static ProductoService servicio = new ProductoService();

    /**
     * Default constructor. 
     */
    public ProductoController() {
        // TODO Auto-generated constructor stub
    	super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String idEliminar = request.getParameter("idProductoEliminar");
		if(idEliminar != null) {
			int idProducto = Integer.parseInt(idEliminar);
			servicio.eliminar(idProducto);
		}
		List<Producto> lista = servicio.listar();
		request.setAttribute("listaProductos", lista);
		RequestDispatcher rd = request.getRequestDispatcher("admProducto.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int idProducto = Integer.parseInt(request.getParameter("idProducto"));
		String nombre = request.getParameter("nombre");
		SimpleDateFormat sdf= new SimpleDateFormat("dd/MM/yyyy");
		
		//Sabemos que tenemos que convertir de String a formato Date 
		Date fechaRegistro = null;
		try {
			fechaRegistro = sdf.parse(request.getParameter("fechaRegistro"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		double precio = Double.parseDouble(request.getParameter("precio"));
		int idCategoria = Integer.parseInt(request.getParameter("idCategoria"));
		String imagen = request.getParameter("imagen");
		int stock = Integer.parseInt(request.getParameter("stock"));
		
		Producto producto = new Producto();
		
		producto.setIdProducto(idProducto);
		producto.setNombre(nombre);
		producto.setFecharegistro(fechaRegistro);
		producto.setPrecio(precio);
		producto.setIdCategoria(idCategoria);
		producto.setImagen(imagen);
		producto.setStock(stock);
		
		Producto actualizar = servicio.buscar(idProducto);
		boolean exito;
		if(actualizar != null) {
			exito = servicio.actualizar(producto);
		}else {
			exito = servicio.insertar(producto);
		}
		if(exito) {
			doGet(request, response);
		}
		else {
			response.getWriter().append(" No se pudo efectuar la operacion ");
		}
	}

}
