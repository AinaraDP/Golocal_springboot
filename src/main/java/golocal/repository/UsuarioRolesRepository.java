package golocal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import golocal.modelo.entity.UsuarioRoles;

public interface UsuarioRolesRepository extends JpaRepository<UsuarioRoles, Integer> {

	@Query("SELECT ur.rol.nombreRol FROM UsuarioRoles ur WHERE ur.usuario.idUsuario = ?1")
	List<String> findRolesByUserId(int idUsuario);

}
