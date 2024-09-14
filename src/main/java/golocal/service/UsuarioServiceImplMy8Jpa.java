package golocal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import golocal.modelo.entity.Usuario;
import golocal.repository.UsuarioRepository;

@Service
public class UsuarioServiceImplMy8Jpa implements UsuarioService{

	@Autowired
	UsuarioRepository usuarioRepository;
	

	@Override
	public Usuario findByUsername(String username) {
		return usuarioRepository.findByUsername(username);
	}
	
	public boolean verificarCredenciales(String username, String password) {
        Usuario usuario = usuarioRepository.findByUsernameAndPassword(username, password);
        return usuario != null;
    }
	
}
