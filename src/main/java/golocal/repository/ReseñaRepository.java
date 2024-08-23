package golocal.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import golocal.modelo.dto.ReseñaDTO;
import golocal.modelo.entity.Reseña;

public interface ReseñaRepository extends JpaRepository<Reseña, Integer> {

    @Query("SELECT new golocal.modelo.dto.ReseñaDTO(" +
           "c.usuario.nombre, " +            // nombreCliente
           "r.puntuacion, " +                // puntuacion
           "i.ciudad.nombreCiudad, " +             // ciudad
           "i.ciudad.pais.nombrePais, " +        // pais
           "g.idioma, " +                    // idioma
           "r.contenido) " +                 // contenido
           "FROM Reseña r " +
           "JOIN r.cliente c " +
           "JOIN r.itinerario i " +
           "JOIN r.guia g " +
           "WHERE g.idGuia = :idGuia")
    List<ReseñaDTO> findReseñasByGuiaId(int idGuia);
}
