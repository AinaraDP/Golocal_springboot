package golocal.service;

import golocal.modelo.entity.Usuario;

public interface UsuarioService {

	Usuario findByUsername(String username);
	boolean verificarCredenciales(String username, String password);
}
