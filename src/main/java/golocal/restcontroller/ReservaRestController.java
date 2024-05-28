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
	
	@GetMapping("/buscar/{id}")
	public List<Reserva> findByIdCliente(@PathVariable("id") int idCliente) {
		return reservaService.findByIdCliente(idCliente);
	}
	
	@DeleteMapping("/borrar/{id}")
	public void deleteByid(@PathVariable("id")int idReserva) {
		reservaService.borrarReserva(idReserva);	
	}
	
	// @PostMapping("/nueva")
	
}
