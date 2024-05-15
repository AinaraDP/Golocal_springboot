package golocal.service;

import java.util.List;

import golocal.modelo.entity.Usuario;

public interface UsuarioService {

	List<Usuario> findAll();
	boolean signIn(Usuario usuario);
	Usuario findbyUsername(String username);
}
