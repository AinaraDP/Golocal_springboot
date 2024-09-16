package golocal.restcontroller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import golocal.modelo.entity.PostBlog;
import golocal.service.PostBlogService;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/blog")
public class PostBlogRestController {
	
	@Autowired
	PostBlogService postBlogService;
	
	/**
     * Maneja la solicitud GET para obtener todos los blogs.
     *
     * @return una lista de todos los blogs
     */
	@GetMapping("/todos")
	public List<PostBlog> todos(){
		return postBlogService.findAll();
	}
	
	/**
	 * Maneja la solicitud GET para obtener un blog por su identificador.
	 *
	 * @param idPost identificador del blog que se quiere buscar
	 * @return Blog correspondiente al idPost dado
	 */
	@GetMapping("/{id}")
	public PostBlog buscarUno(@PathVariable("id")int idPost) {
		return postBlogService.findByPostId(idPost);
	}

}
