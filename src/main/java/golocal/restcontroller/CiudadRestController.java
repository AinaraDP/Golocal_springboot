package golocal.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import golocal.modelo.entity.Ciudad;
import golocal.service.CiudadService;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/ciudad")
public class CiudadRestController {

	@Autowired
	private CiudadService ciudadService;
	
	@GetMapping("/todos")
	public List<Ciudad> todos(){
		return ciudadService.findAll();
	}
}
