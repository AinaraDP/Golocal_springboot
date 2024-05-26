package golocal.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import golocal.modelo.dto.ReviewDTO;
import golocal.service.ReviewService;

@RestController
public class ReviewController {
	 @Autowired
	    private ReviewService reseñaService;

	    @GetMapping("/review/{idGuia}")
	    public ResponseEntity<List<ReviewDTO>> getReseñasByGuiaId(@PathVariable int idGuia) {
	        List<ReviewDTO> reseñas = reseñaService.getReseñasByGuiaId(idGuia);
	        return ResponseEntity.ok(reseñas);
	    }

}
