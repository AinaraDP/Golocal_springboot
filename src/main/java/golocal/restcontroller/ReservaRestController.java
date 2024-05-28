package golocal.restcontroller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import golocal.modelo.entity.Cliente;
import golocal.modelo.entity.Itinerario;
import golocal.modelo.entity.Reserva;
import golocal.modelo.entity.Usuario;
import golocal.service.ClienteService;
import golocal.service.ItinerarioService;
import golocal.service.ReservaService;
import golocal.service.UsuarioService;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/reserva")
public class ReservaRestController {
	
	@Autowired
	ReservaService reservaService;
	
	@Autowired
	ClienteService clienteService;
	
	@Autowired
	UsuarioService usuarioService;
	
	@Autowired
	ItinerarioService itinerarioService;
	

	
	@GetMapping("/buscar/{id}")
	public List<Reserva> findByIdCliente(@PathVariable("id") int idCliente) {
		return reservaService.findByIdCliente(idCliente);
	}
	
	@DeleteMapping("/borrar/{id}")
	public void deleteByid(@PathVariable("id")int idReserva) {
		reservaService.borrarReserva(idReserva);	
	}
	
	@PostMapping("/crear/{idItinerario}/{idUsuario}")
	public ResponseEntity<Reserva> crearReserva(@PathVariable int idItinerario, int idUsuario) {
	    // Obtener el usuario autenticado
	    Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	    String username;
	    if (principal instanceof UserDetails) {
	        username = ((UserDetails) principal).getUsername();
	    } else {
	        username = principal.toString();
	    }

	    // Buscar el usuario por nombre de usuario
	    Usuario usuario = usuarioService.findByUsername(username);
	    if (usuario == null) {
	        return ResponseEntity.status(401).build(); // Unauthorized
	    }

	    // Buscar el cliente asociado al usuario
	    Cliente cliente = clienteService.findByIdUsuario(usuario.getIdUsuario());
	    if (cliente == null) {
	        return ResponseEntity.status(400).build(); // Bad Request
	    }

	    // Buscar el itinerario
	    Itinerario itinerario = itinerarioService.findById(idItinerario);
	    if (itinerario == null) {
	        return ResponseEntity.badRequest().build();
	    }

	    // Obtener la fecha del itinerario
	    Date fechaItinerario = itinerario.getFechaDisponible();

	    // Crear la reserva con el cliente y la fecha del itinerario
	    Reserva reserva = reservaService.crearReserva(itinerario, cliente);
	    return ResponseEntity.ok(reserva);
	}


	
}
