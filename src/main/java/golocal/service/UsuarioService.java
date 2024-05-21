package golocal.service;

import java.util.List;

import golocal.modelo.entity.Usuario;

public interface UsuarioService {

	List<Usuario> findAll();
	Usuario findByUsername(String username);
	Usuario findByUsernameAndPassword(String username, String password);
	boolean verificarCredenciales(String username, String password);
	
}
