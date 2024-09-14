package golocal.modelo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ReseñaDTO {
	private String nombreCliente;
	private double puntuacion;
	private String ciudad;
	private String pais;
	private String idioma;
	private String contenido;
}
