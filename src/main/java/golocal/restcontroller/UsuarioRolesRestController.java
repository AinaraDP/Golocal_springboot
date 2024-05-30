package golocal.restcontroller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import golocal.service.UsuarioRolesService;

@RestController
@RequestMapping("/usuarioRoles")
public class UsuarioRolesRestController {

	@Autowired
	UsuarioRolesService usuarioRolesService;

	/**
	 * Maneja la solicitud GET para obtener los roles por el identificador de un
	 * usuario en específico
	 *
	 * @param idUsuario identificador del usuario del que se quiere obtener los roles
	 * @return Una lista de los roles obtenidos por la búsqueda del idUsuario
	 */
	@GetMapping("/rol/{id}")
	public List<String> getRolesByIdUsuario(@PathVariable("id") int idUsuario) {

		return usuarioRolesService.findRolesByUserId(idUsuario);
	}
}
