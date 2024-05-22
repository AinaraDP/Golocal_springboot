package golocal.service;

import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import golocal.modelo.dto.UsuarioDto;
import golocal.modelo.entity.Usuario;
import jakarta.servlet.http.HttpSession;

@Service
public class AuthenticationService {

	@Autowired
    private UsuarioService usuarioService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestBody UsuarioDto loginDTO, HttpSession session) {
        Usuario usuario = usuarioService.findByUsername(loginDTO.getUsername());
        if (usuario != null && passwordEncoder.matches(loginDTO.getPassword(), usuario.getPassword())) {
            String token = Base64.getEncoder().encodeToString((loginDTO.getUsername() + ":" + loginDTO.getPassword()).getBytes());
            session.setAttribute("token", token);
            return ResponseEntity.ok(token);
        } else {
            return ResponseEntity.status(401).build();
        }
    }
}
