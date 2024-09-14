package golocal.restcontroller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import golocal.modelo.entity.Ciudad;
import golocal.service.CiudadService;


/**
 * Controlador REST para manejar solicitudes relacionadas con las ciudades.
 */
@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/ciudad")
public class CiudadRestController {

	@Autowired
	private CiudadService ciudadService;
	
	/**
     * Maneja la solicitud GET para obtener todas las ciudades.
     *
     * @return una lista de todas las ciudades
     */
	@GetMapping("/todos")
	public List<Ciudad> todos(){
		return ciudadService.findAll();
	}
}
