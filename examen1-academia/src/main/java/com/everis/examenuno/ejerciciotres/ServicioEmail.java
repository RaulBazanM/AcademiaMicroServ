package com.everis.examenuno.ejerciciotres;

public class ServicioEmail implements IServicioEmail{

	public void enviarCorreo(String email, String asunto, String texto) {
		// TODO Auto-generated method stub
		validarCorreo(email);
	}

	public void enviarCorreoHTML(String email, String asunto, String html) {
		// TODO Auto-generated method stub
		validarCorreo(email);
	}
	
	public static void validarCorreo(String email) {
		String[] partesCorreo = email.split("@");
		//System.out.println(partesCorreo.length);
		boolean dominioCorrecto = false;
		if(email.charAt(email.length()-1) != '@') {
			dominioCorrecto = true;
		}
		if(partesCorreo.length == 2) {
			String usuario = partesCorreo[0];
			String dominio = partesCorreo[1];
			String[] partesUsuario = usuario.split(" ");
			//System.out.println(usuario + " " + dominio);
			if(partesUsuario.length==1) {
				String[] partesDominio = dominio.split("[.]");
				//System.out.println(partesDominio.length);
				if(partesDominio.length==2 && partesDominio[1].equals("com") && dominioCorrecto == true) {
					System.out.println("El correo es válido");
				}
				else {
					System.out.println("El dominio del correo no es válido");
				}
			}
			else {
				System.out.println("El usuario del correo no es válido");
			}
		}
		else {
			System.out.println("El correo no es válido");
		}
	}
	

}
