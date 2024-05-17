package golocal.restcontroller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import golocal.modelo.entity.Itinerario;
import golocal.repository.ItinerarioRepository;
import golocal.service.ItinerarioService;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/itinerario")
public class ItinerarioRestController {
	
	@Autowired
	private ItinerarioService itinerarioService;
	
	@Autowired
	ItinerarioRepository itinerarioRepository;
	
	@GetMapping("/todos")
	public List<Itinerario> todos() {
		return itinerarioService.findAll();
	}
	
<<<<<<< HEAD
	@GetMapping("/porBusqueda/{nombreCiudad}/{nombrePais}/{fechaDisponible}")
    public List<Itinerario> obtenerItinerariosPorCiudadPaisYFecha(
            @PathVariable("nombreCiudad") String nombreCiudad,
            @PathVariable("nombrePais") String nombrePais,
            @PathVariable("fechaDisponible")@DateTimeFormat(pattern="yyyy-MM-dd") Date fechaDisponible) {
        return itinerarioRepository.findByCiudadPaisYFecha(nombreCiudad, nombrePais, fechaDisponible);
    }
=======
	@GetMapping("/todos/{nombrePais}/{nombreCiudad}/{fechaDisponible}")
	public List<Itinerario> obtenerItinerariosPorCiudadPaisYFecha(
	        @PathVariable("nombreCiudad") String nombreCiudad,
	        @PathVariable("nombrePais") String nombrePais,
	        @PathVariable("fechaDisponible") @DateTimeFormat(pattern="yyyy-MM-dd") Date fechaDisponible) {
	    return itinerarioRepository.findByCiudadPaisYFecha(nombreCiudad, nombrePais, fechaDisponible);
	}

>>>>>>> d7df1627fe1887d8ff56b40cc5b2ceadfbe036e6

}
