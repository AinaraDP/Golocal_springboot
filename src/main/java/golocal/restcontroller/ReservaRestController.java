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
import org.springframework.web.bind.annotation.RequestBody;
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
	
	@PostMapping("/crearNueva")
    public ResponseEntity<?> crearReserva(@RequestBody Reserva reserva) {
        // Verificar que el cliente asociado existe
        Cliente cliente = clienteService.findByIdUsuario(reserva.getCliente().getIdCliente());
        if (cliente == null) {
            return ResponseEntity.status(400).body("Cliente no encontrado");
        }
        
        // Verificar que el itinerario asociado existe
        Itinerario itinerario = reserva.getItinerario(); 
        if (itinerario == null || itinerario.getIdItinerario() == 0) {
            return ResponseEntity.status(400).body("Itinerario no válido");
        }
        

        // Crear la reserva
        reserva.setCliente(cliente);
        reserva.setItinerario(itinerario);
        Reserva nuevaReserva = reservaService.crearReserva(itinerario, cliente);

        return ResponseEntity.ok(nuevaReserva);
    }




	
}
