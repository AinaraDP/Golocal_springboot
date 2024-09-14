package golocal.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import golocal.modelo.entity.Ciudad;
import golocal.modelo.entity.Guia;
import golocal.modelo.entity.Itinerario;
import golocal.repository.GuiaRepository;
import golocal.repository.ItinerarioRepository;

@Service
public class GuiaServiceMyImpl8Jpa implements GuiaService{

	@Autowired
	GuiaRepository guiaRepository;
	
	@Autowired
	ItinerarioRepository itinerarioRepository;
	
	@Override
	public List<Guia> findAll() {
		return guiaRepository.findAll();
	}

	@Override
	public Guia findbyId(int idGuia) {
		return guiaRepository.findById(idGuia).orElse(null);
	}	
	
	@Override
	public Ciudad findCiudadByIdGuia(int idGuia) {
		Itinerario itinerario = itinerarioRepository.getItinerarioByIdGuia(idGuia);
		Ciudad ciudad = itinerario.getCiudad();
		return ciudad;
	}
}
