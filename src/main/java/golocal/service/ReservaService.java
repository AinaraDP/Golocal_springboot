package golocal.service;

import java.util.List;

import golocal.modelo.entity.Cliente;
import golocal.modelo.entity.Itinerario;
import golocal.modelo.entity.Reserva;

public interface ReservaService {
	
	List<Reserva> findByIdCliente(int idCliente);
	Reserva crearReserva(Itinerario itinerario, Cliente cliente);
	void borrarReserva(int idReserva);
	List<Reserva> findAll();

}
