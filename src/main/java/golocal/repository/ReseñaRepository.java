package golocal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import golocal.modelo.dto.ReviewDTO;
import golocal.modelo.entity.Reseña;


public interface ReseñaRepository extends JpaRepository<Reseña, Integer>{
	 @Query("SELECT new golocal.modelo.dto.ReviewDTO(r.puntuacion, r.contenido, c.usuario.nombre) " +
	           "FROM Reseña r JOIN r.cliente c WHERE r.guia.idGuia = :idGuia")
	    List<ReviewDTO> findReseñasByGuiaId(int idGuia);
}
