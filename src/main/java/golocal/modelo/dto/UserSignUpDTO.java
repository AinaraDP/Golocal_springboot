package golocal.modelo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserSignUpDTO {
	 	private String nombre;
	    private String apellidos;
	    private String username;
	    private String email;
	    private String dni;
	    private int telefono;
	    private String contrasena;
	    private String sobreMi;
}
