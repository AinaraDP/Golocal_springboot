package golocal.service;


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

	@Override
	public Usuario findByUsername(String username) {
		return usuarioRepository.findByUsername(username);
	}
	
	public boolean verificarCredenciales(String username, String password) {
        Usuario usuario = usuarioRepository.findByUsernameAndPassword(username, password);
        return usuario != null; // Si el usuario es null, las credenciales no coinciden
    }
	

	@Override
	public Usuario findByUsernameAndPassword(String username, String password) {
		
		return usuarioRepository.findByUsernameAndPassword(username, password);
	}

}
