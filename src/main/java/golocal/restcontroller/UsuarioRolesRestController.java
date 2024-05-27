package golocal.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import golocal.modelo.entity.UsuarioRoles;
import golocal.service.UsuarioRolesService;

@RestController
@RequestMapping("/usuarioRoles")
public class UsuarioRolesRestController {

	@Autowired
	UsuarioRolesService usuarioRolesService;
	
	@GetMapping("/rol/{id}")
	public List<String> getRolesByIdUsuario(@PathVariable ("id") int idUsuario  ) {
		
		return usuarioRolesService.findRolesByUserId(idUsuario);
	}
}
