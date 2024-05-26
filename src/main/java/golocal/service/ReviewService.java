package golocal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import golocal.modelo.dto.ReviewDTO;
import golocal.repository.ReviewRepository;
import java.util.List;

@Service
public class ReviewService {

    @Autowired
    private ReviewRepository reseñaRepository;

    public List<ReviewDTO> getReseñasByGuiaId(int idGuia) {
        return reseñaRepository.findReseñasByGuiaId(idGuia);
    }
}
