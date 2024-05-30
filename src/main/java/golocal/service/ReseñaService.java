package golocal.service;

import java.util.List;
import golocal.modelo.dto.ReseñaDTO;

public interface ReseñaService {

	List<ReseñaDTO> getReseñasByGuiaId(int idGuia);
}
