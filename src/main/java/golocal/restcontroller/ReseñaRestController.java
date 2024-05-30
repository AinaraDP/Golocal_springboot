package golocal.restcontroller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import golocal.modelo.dto.ReseñaDTO;
import golocal.service.ReseñaService;

@RestController
public class ReseñaRestController {

	@Autowired
	private ReseñaService reseñaService;

	/**
	 * Maneja la solicitud GET para obtener las reseñas por el identificador de un
	 * guía en especifico.
	 *
	 * @param idGuia identificador del guía del que se quiere obtener la reseña
	 * @return una respuesta HTTP con una lista de las reseñas del guía
	 */
	@GetMapping("/review/{idGuia}")
	public ResponseEntity<List<ReseñaDTO>> getReseñasByGuiaId(@PathVariable int idGuia) {
		List<ReseñaDTO> reseñas = reseñaService.getReseñasByGuiaId(idGuia);
		return ResponseEntity.ok(reseñas);
	}

}
