package golocal.service;

import java.util.List;
import golocal.modelo.entity.Ciudad;
import golocal.modelo.entity.Guia;

public interface GuiaService {

	List<Guia> findAll();
	Guia findbyId(int idGuia);
	Ciudad findCiudadByIdGuia(int idGuia);
}
