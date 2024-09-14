package golocal.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import golocal.modelo.entity.Cliente;
import golocal.modelo.entity.Itinerario;
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
	public Reserva crearReserva(Itinerario itinerario, Cliente cliente) {
		
		// Verificar si ya existe una reserva para este cliente e itinerario
        Optional<Reserva> existingReserva = reservaRepository.findByClienteAndItinerario(cliente, itinerario);

        if (existingReserva.isPresent()) {
            throw new RuntimeException("Ya existe una reserva para este itinerario.");
        }
		Reserva reserva = new Reserva();
        reserva.setFecha(new Date());
        reserva.setItinerario(itinerario);
        reserva.setCliente(cliente);
        return reservaRepository.save(reserva);
	}

	@Override
	public void borrarReserva(int idReserva) {
		reservaRepository.deleteById(idReserva);
		
	}

}
