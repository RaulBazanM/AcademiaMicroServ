package com.everis.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.everis.jee.util.ConexionMySQL;
import com.everis.poo.model.Producto;

public class ProductoDAO {
	
private ConexionMySQL conexion = new ConexionMySQL();
	
	public List<Producto> listar(){
		String sql = "SELECT * FROM cliente ORDER BY nombre;";
		List<Producto> listaProductos = new ArrayList<Producto>();
		try {
			conexion.conectar();
			ResultSet rs = conexion.ejecutarConsulta(sql);
			while(rs.next()) {
				Producto producto = new Producto();
				producto.setIdProducto(rs.getInt("idproducto"));
				producto.setNombre(rs.getString("nombre"));
				producto.setFecharegistro(rs.getDate("fecharegistro"));
				producto.setPrecio(rs.getInt("precio"));
				producto.setIdCategoria(rs.getInt("idcategoria"));
				producto.setImagen(rs.getString("categoria"));
				producto.setStock(rs.getInt("strock"));
				listaProductos.add(producto);
			}
			conexion.desconectar();
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		}
		return listaProductos;
	}
	
	public void insertar(Producto producto) {
		String sql = "INSERT INTO producto(idproducto, nombre, fecharegistro, precio, idcategoria,image,stock) VALUES ('"+producto.getIdProducto()+"','"+producto.getNombre()+"','"+producto.getFecharegistro()+"','"+producto.getPrecio()+"','"+producto.getIdCategoria()+"','"+producto.getImagen()+"','"+producto.getStock()+"')";
		try {
			conexion.conectar();
			conexion.ejecutar(sql);
			conexion.desconectar();
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
	}
	
	public Producto buscar(int idProducto) {
		String sql = "SELECT * FROM producto WHERE idproducto = "+idProducto;
		try {
			Producto producto = new Producto();
			conexion.conectar();
			ResultSet rs = conexion.ejecutarConsulta(sql);
			if(rs.next()) {
				producto.setIdProducto(rs.getInt("idProducto"));
				producto.setNombre(rs.getString("nombre"));
				producto.setFecharegistro(rs.getDate("fecharegistro"));
				producto.setPrecio(rs.getInt("precio"));
				producto.setIdCategoria(rs.getInt("idCategoria"));
				producto.setImagen(rs.getString("imagen"));
				producto.setStock(rs.getInt("stock"));
				conexion.desconectar();
				return producto;
			}
			conexion.desconectar();
			return null;
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			return null;
		}
	}
	//se regresa boolean si se necesita confirmar si se hizo bien o no
	public boolean actualizar (Producto producto) {
		String sql = "UPDATE producto SET idproducto = '"+producto.getIdProducto()+"', nombre = '"+producto.getNombre()+"', fecharegistro = '"+producto.getFecharegistro()+"', precio = '"+producto.getPrecio()+"', idcategoria ='"+producto.getIdCategoria()+"', imagen ='"+producto.getImagen()+"'stock ='"+producto.getStock()+"' WHERE idproducto = '"+producto.getIdProducto()+"'";
		try {
			conexion.conectar();
			conexion.ejecutar(sql);
			conexion.desconectar();
			return true;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return false;
			
		}
	}
	
	public boolean eliminar(int idProducto) {
		String sql = "DELETE FROM producto WHERE idproducto = '"+idProducto+"'";
		try {
			conexion.conectar();
			conexion.ejecutar(sql);
			conexion.desconectar();
			return true;
		} catch (Exception e) {
			System.err.println(e.getMessage());
			return false;
		}
	}

}
