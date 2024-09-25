package golocal.restcontroller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import golocal.modelo.entity.Ciudad;
import golocal.modelo.entity.Guia;
import golocal.service.GuiaService;

/**
 * Controlador REST para manejar solicitudes relacionadas con los guias.
 */
@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/guia")
public class GuiaRestController {

	@Autowired
	private GuiaService guiaService;

	/**
	 * Maneja la solicitud GET para obtener todos los guías.
	 *
	 * @return una lista de todos los guías
	 */
	@GetMapping("/todos")
	public List<Guia> todos() {
		return guiaService.findAll();
	}
	
	/**
	 * Maneja la solicitud GET para obtener un guía por su identificador.
	 *
	 * @param idGuia identificador del guía que se quiere buscar
	 * @return Guía correspondiente al idGuia dado
	 */
	@GetMapping("/{id}")
	public Guia buscarUno(@PathVariable("id") int idGuia) {
		return guiaService.findbyId(idGuia);
	}

	/**
	 * Maneja la solicitud GET para obtener una ciudad por el identificador de un guía.
	 *
	 * @param idGuia identificador del guía que se quiere buscar
	 * @return Ciudad correspondiente al idGuía dado
	 */
	@GetMapping("/ciudad/{idGuia}")
	public Ciudad getCiudadByGuiaId(@PathVariable int idGuia) {
		return guiaService.findCiudadByIdGuia(idGuia);
	}

}
