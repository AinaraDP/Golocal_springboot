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

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/guia")
public class GuiaRestController {

	@Autowired
	private GuiaService guiaService;
	
	@GetMapping("/todos")
	public List<Guia> todos() {
		return guiaService.findAll();
	}
	
	@GetMapping("/{id}")
	public Guia buscarUno(@PathVariable("id" )int idGuia) {
		return guiaService.findbyId(idGuia);
	}
	
    @GetMapping("/ciudad/{idGuia}")
    public Ciudad getCiudadByGuiaId(@PathVariable int idGuia) {
    	return guiaService.findCiudadByIdGuia(idGuia);
    }
}
