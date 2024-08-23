package golocal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import golocal.modelo.entity.Reserva;
import golocal.repository.ReservaRepository;

@Service
public class ReservaServiceImplMy8Jpa implements ReservaService {
	
	@Autowired
	ReservaRepository reservaRepository;

	@Override
	public List<Reserva> findByIdCliente(int idCliente) {
		return reservaRepository.findAllByClienteId(idCliente);
	}

	@Override
	public Reserva crearReserva(Reserva reserva) {
		return reservaRepository.save(reserva);
	}

	@Override
	public void borrarReserva(int idReserva) {
		reservaRepository.deleteById(idReserva);
		
	}

	@Override
	public List<Reserva> findAll() {
		return reservaRepository.findAll();
	}

}
