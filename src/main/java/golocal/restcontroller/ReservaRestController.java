package golocal.restcontroller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import golocal.modelo.entity.Reserva;
import golocal.service.ReservaService;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/reserva")
public class ReservaRestController {

	@Autowired
	ReservaService reservaService;

	/**
	 * Maneja la solicitud GET para obtener las reservas por el identificador de un
	 * cliente en específico
	 *
	 * @param idCliente identificador del cliente del que se quiere obtener las reservas
	 * @return Una lista de las reservas obtenidas por la búsqueda del idCliente
	 */
	@GetMapping("/buscar/{id}")
	public List<Reserva> findByIdCliente(@PathVariable("id") int idCliente) {
		return reservaService.findByIdCliente(idCliente);
	}

	/**
	 * Maneja la solicitud DELETE para eliminar una reserva por su identificador.
	 *
	 * @param idReserva el ID de la reserva que se quiere eliminar
	 */
	@DeleteMapping("/borrar/{id}")
	public void deleteByid(@PathVariable("id") int idReserva) {
		reservaService.borrarReserva(idReserva);
	}

}
