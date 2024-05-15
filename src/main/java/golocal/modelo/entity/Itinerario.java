package golocal.modelo.entity;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
@Getter
@Setter
@Entity
@Table(name="itinerarios")
public class Itinerario implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_itinerario")
	private int idItinerario;
	private String descripcion;
	private double duracion;
	@Column(name="fecha_disponible")
	private Date fechaDisponible;
	@Column(name="plazas_max")
	private String plazasMax;
	private boolean monte;
	private boolean playa;
	private boolean cultura;
	private boolean gastronomia;
	private boolean enologico;
	private boolean ecologico;
	private boolean nocturno;
	private boolean relajacion;
	private boolean rural;
	private boolean local;
	@Column(name="id_guia")
	private Guia guia;
	@Column(name="id_ciudad")
	private Ciudad ciudad;
	
	
}
