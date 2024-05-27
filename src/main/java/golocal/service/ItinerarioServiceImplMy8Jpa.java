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
		
		return itinerarioRepository.findByCiudadPaisYFecha(nombreCiudad, nombrePais, fechaDisponible);
	}

	@Override
	public Itinerario findById(int idItinerario) {

		return itinerarioRepository.findById(idItinerario).orElse(null);
	}

	@Override
	public Itinerario getItinerarioByUsuarioId(int idUsuario) {
		
		return itinerarioRepository.getItinerarioByUsuarioId(idUsuario);
	}

	@Override
	public Itinerario insertOne(Itinerario itinerario) {

		return itinerarioRepository.save(itinerario);
	}

	

	

}
