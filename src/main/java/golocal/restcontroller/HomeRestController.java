package golocal.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	public ResponseEntity<String> login(@RequestBody UsuarioDto usuarioDto) {
	    String usuario = usuarioDto.getUsername();
	    String password = usuarioDto.getPassword();
	    Usuario usuarioEntity = usuarioService.findByUsername(usuario);

	    if (usuarioEntity == null) {
	        return ResponseEntity.status(401).body("Usuario incorrecto");
	    }

	    if (!usuarioService.verificarCredenciales(usuario, password)) {
	        return ResponseEntity.status(401).body("Contraseña incorrecta");
	    }
	    
	   
	    return ResponseEntity.ok().body("Login exitoso");
	}
	
}
