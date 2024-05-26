package golocal.service;

import java.util.Date;
import java.util.List;
import golocal.modelo.entity.Itinerario;

public interface ItinerarioService {

	List<Itinerario> findAll();
	List<Itinerario> findByCiudadPaisYFecha(String nombreCiudad, String nombrePais,
											Date fechaDisponible);
	Itinerario findById(int idItinerario);
	Itinerario getItinerarioByIdGuia(int idGuia);
}
