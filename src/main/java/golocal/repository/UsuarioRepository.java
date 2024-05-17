package golocal.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import golocal.modelo.entity.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer>{
	/*@Query("SELECT u FROM Usuarios u " +
	           "JOIN Guias g ON u.idGuia = g.idGuia " +
	           "JOIN Itinerarios i ON g.idGuia = i.idGuia " +
	           "WHERE u.idUsuario = :idUsuario")
	List<Usuario> findGuiasByCiudadPaisFecha(@Param("nombreCiudad") String nombreCiudad,
            @Param("nombrePais") String nombrePais,
            @Param("fechaDisponible") Date fechaDisponible);
	*/

}
