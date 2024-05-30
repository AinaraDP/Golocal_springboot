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

	/**
	 * Maneja la solicitud GET para conseguir un itinerario por la búsqueda de una
	 * ciudad, país y fecha.
	 *
	 * @param nombreCiudad nombre de la ciudad del itinerario
	 * @param nombrePais nombre del país del itinerario
	 * @param fechaDisponible fecha del itinerario que se quiere buscar
	 * @return Una lista de itinerarios que coinciden con la búsqueda realizada
	 */
	@GetMapping("/todos/{nombrePais}/{nombreCiudad}/{fechaDisponible}")
	public List<Itinerario> obtenerItinerariosPorCiudadPaisYFecha(@PathVariable("nombreCiudad") String nombreCiudad,
			@PathVariable("nombrePais") String nombrePais,
			@PathVariable("fechaDisponible") @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaDisponible) {
		return itinerarioRepository.findByCiudadPaisYFecha(nombreCiudad, nombrePais, fechaDisponible);
	}

	/**
	 * Maneja la solicitud GET para obtener un itinerario por el identificador de un guía.
	 *
	 * @param idGuia identificador del guía del que se quiere buscar el itinerario
	 * @return Itinerario correspondiente al idGuia dado
	 */
	@GetMapping("/byGuia/{id}")
	public Itinerario byGuiaId(@PathVariable("id") int idGuia) {

		return itinerarioService.getItinerarioByIdGuia(idGuia);
	}

	/**
	 * Maneja la solicitud GET para obtener un itinerario por el identificador de un usuario.
	 *
	 * @param idUSuario identificador del usuario del que se quiere buscar el itinerario
	 * @return Itinerario correspondiente al idUSuario dado
	 */
	@GetMapping("/byUsuario/{id}")
	public Itinerario findItinerarioByUserId(@PathVariable("id") int idUsuario) {
		return itinerarioRepository.findItinerarioByUserId(idUsuario);
	}
}
