package golocal.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import golocal.modelo.entity.Itinerario;
import golocal.repository.ItinerarioRepository;

@Service
public class ItinerarioServiceImplMy8Jpa implements ItinerarioService{

	@Autowired
	ItinerarioRepository itinerarioRepository;
	
	@Override
	public List<Itinerario> findAll() {
		
		return itinerarioRepository.findAll();
	}

	@Override
	public List<Itinerario> findByCiudadPaisYFecha(String nombreCiudad, String nombrePais, Date fechaDisponible) {
		// TODO Auto-generated method stub
		return null;
	}

}
