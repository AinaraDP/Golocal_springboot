package golocal.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import golocal.modelo.entity.Itinerario;

public interface ItinerarioRepository extends JpaRepository<Itinerario, Integer> {
	@Query("SELECT i FROM Itinerario i " +
		       "WHERE i.ciudad.nombreCiudad = :nombreCiudad " +
		       "AND i.ciudad.pais.nombrePais = :nombrePais " +
		       "AND i.fechaDisponible = :fechaDisponible")
		List<Itinerario> findByCiudadPaisYFecha(@Param("nombreCiudad") String nombreCiudad,
		                                         @Param("nombrePais") String nombrePais,
		                                         @Param("fechaDisponible") Date fechaDisponible);

}
