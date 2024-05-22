package golocal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import golocal.modelo.entity.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer>{

	Usuario findByUsername(String username);
	Usuario findByUsernameAndPassword(String username, String password);
}
