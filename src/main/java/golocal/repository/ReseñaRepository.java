package golocal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import golocal.modelo.dto.ReseñaDTO;
import golocal.modelo.entity.Reseña;


public interface ReseñaRepository extends JpaRepository<Reseña, Integer>{
	 @Query("SELECT new golocal.modelo.dto.ReseñaDTO(r.puntuacion, r.contenido, c.usuario.nombre) " +
	           "FROM Reseña r JOIN r.cliente c WHERE r.guia.idGuia = :idGuia")
	    List<ReseñaDTO> findReseñasByGuiaId(int idGuia);
}
