package golocal.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import golocal.modelo.dto.UserSignUpDTO;
import golocal.modelo.entity.Usuario;
import golocal.repository.UsuarioRepository;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class UsuarioRestController {

	@Autowired
	private UsuarioRepository usuarioRepository;

	@PostMapping("/signup")
	public ResponseEntity<String> registerUser(@RequestBody UserSignUpDTO userRegistrationDTO) {

		Usuario usuario = new Usuario();
		usuario.setNombre(userRegistrationDTO.getNombre());
		usuario.setApellidos(userRegistrationDTO.getApellidos());
		usuario.setEmail(userRegistrationDTO.getEmail());
		usuario.setTelefono(userRegistrationDTO.getTelefono());
		usuario.setPassword(userRegistrationDTO.getContrasena());
		usuario.setDni(userRegistrationDTO.getDni());
		usuario.setUsername(userRegistrationDTO.getUsername());
		usuario.setSobreMi(userRegistrationDTO.getSobreMi());

		usuarioRepository.save(usuario);

		return ResponseEntity.ok("Usuario registrado con éxito");
	}

}
