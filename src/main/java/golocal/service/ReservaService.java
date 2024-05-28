package golocal.service;

import java.util.List;

import golocal.modelo.entity.Reserva;

public interface ReservaService {
	
	List<Reserva> findByIdCliente(int idCliente);
	Reserva crearReserva(Reserva reserva);
	void borrarReserva(int idReserva);

}
