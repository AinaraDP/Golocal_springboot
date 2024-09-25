package golocal.service;

import golocal.modelo.dto.ReviewDTO;
import java.util.List;


public interface ReseñaService {


    public List<ReviewDTO> getReseñasByGuiaId(int idGuia);
}
