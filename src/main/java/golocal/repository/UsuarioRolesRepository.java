package golocal.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import golocal.modelo.entity.Usuario;
import golocal.modelo.entity.UsuarioRoles;


@Repository
public interface UsuarioRolesRepository extends JpaRepository<UsuarioRoles, Integer>{
	
	List<UsuarioRoles> findByUsuario(Usuario usuario);

}
