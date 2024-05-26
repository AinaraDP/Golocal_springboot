package golocal.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.CrossOrigin;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import golocal.modelo.dto.UsuarioDto;
import golocal.modelo.entity.Usuario;
import golocal.service.UsuarioService;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
public class HomeRestController {
	
	@Autowired
	private UsuarioService usuarioService;

	
	
	@PostMapping("/login")
	public ResponseEntity<Usuario> login(@RequestBody UsuarioDto usuarioDto) {
	    String username = usuarioDto.getUsername();
	    String password = usuarioDto.getPassword();
	    Usuario usuarioEntity = usuarioService.findByUsername(username);

	    if (usuarioEntity == null) {
	        return ResponseEntity.status(401).body(null); // Usuario incorrecto
	    }

	    if (!usuarioService.verificarCredenciales(username, password)) {
	        return ResponseEntity.status(401).body(null); // Contraseña incorrecta
	    }

	    return ResponseEntity.ok().body(usuarioEntity); // Devuelve el usuario completo
	}

}
