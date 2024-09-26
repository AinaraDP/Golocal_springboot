package golocal.modelo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ReviewDTO {
	  private double puntuacion;
    private String contenido;
    private String nombreCliente;
    private String nombreCiudad;
    private String nombrePais;

}
