package golocal.service;

import java.util.Date;
import java.util.List;

import golocal.modelo.entity.Usuario;

public interface UsuarioService {

	List<Usuario> findAll();
	/*
	List<Usuario> findGuiasByCiudadPaisFecha(String nombreCiudad, String nombrePais,
											 Date fechaDisponible);
	*/
	
	
}
