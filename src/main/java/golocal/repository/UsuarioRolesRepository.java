package golocal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import golocal.modelo.entity.UsuarioRoles;


public interface UsuarioRolesRepository extends JpaRepository<UsuarioRoles, Integer>{
	
	UsuarioRoles findByUsuarioIdUsuario(int idUsuario);

}
