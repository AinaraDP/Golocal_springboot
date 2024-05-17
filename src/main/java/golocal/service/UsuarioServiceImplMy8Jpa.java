package golocal.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import golocal.modelo.entity.Usuario;
import golocal.repository.UsuarioRepository;

@Service
public class UsuarioServiceImplMy8Jpa implements UsuarioService{

	@Autowired
	UsuarioRepository usuarioRepository;
	
	@Override
	public List<Usuario> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
/*
	@Override
	public List<Usuario> findGuiasByCiudadPaisFecha(String nombreCiudad, String nombrePais, Date fechaDisponible) {
		return usuarioRepository.findGuiasByCiudadPaisFecha(nombreCiudad, nombrePais, fechaDisponible);
	}
	*/

}
