package golocal.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
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
	
	@PutMapping("/user-profile/{id}")
	 public ResponseEntity<Usuario> updateUser(@PathVariable int id, @RequestBody UserSignUpDTO userUpdateDTO) {
	     return usuarioRepository.findById(id).map(usuario -> {
	         usuario.setNombre(userUpdateDTO.getNombre());
	         usuario.setApellidos(userUpdateDTO.getApellidos());
	         usuario.setEmail(userUpdateDTO.getEmail());
	         usuario.setTelefono(userUpdateDTO.getTelefono());
	         
	         // Verificar si se proporciona una nueva contraseña
	         if (userUpdateDTO.getContrasena() != null && !userUpdateDTO.getContrasena().isEmpty()) {
	             usuario.setPassword(userUpdateDTO.getContrasena());
	         }
	         
	         usuario.setDni(userUpdateDTO.getDni());
	         usuario.setUsername(userUpdateDTO.getUsername());
	         usuario.setSobreMi(userUpdateDTO.getSobreMi());
	         
	         Usuario updatedUsuario = usuarioRepository.save(usuario);
	       

	         return ResponseEntity.ok().body(updatedUsuario); // Devuelve el usuario completo
	     }).orElseGet(() -> ResponseEntity.notFound().build());
	 }
}
