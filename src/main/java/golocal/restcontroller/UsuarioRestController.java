package golocal.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import golocal.modelo.entity.Guia;
import golocal.repository.GuiaRepository;
import golocal.service.GuiaService;
import golocal.service.UsuarioService;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/usuario")
public class UsuarioRestController {

	@Autowired
	private UsuarioService usuarioService;
	
	
	/*
	@GetMapping("/porBusqueda/{nombreCiudad}/{nombrePais}/{fechaDisponible}")
    public List<Usuario> obtenerItinerariosPorCiudadPaisYFecha(
            @PathVariable("nombreCiudad") String nombreCiudad,
            @PathVariable("nombrePais") String nombrePais,
            @PathVariable("fechaDisponible")@DateTimeFormat(pattern="yyyy-MM-dd") Date fechaDisponible) {
        return usuarioService.findGuiasByCiudadPaisFecha(nombreCiudad, nombrePais, fechaDisponible);
    }
    */
	
	
}
