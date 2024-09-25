package golocal.repository;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import golocal.modelo.entity.Cliente;
import golocal.modelo.entity.Itinerario;
import golocal.modelo.entity.Reserva;

public interface ReservaRepository extends JpaRepository<Reserva, Integer> {
	
	 @Query("SELECT r FROM Reserva r WHERE r.cliente.idCliente = :idCliente")
	 List<Reserva> findAllByClienteId(int idCliente);
	 
	 Optional<Reserva> findByClienteAndItinerario(Cliente cliente, Itinerario itinerario);

}
