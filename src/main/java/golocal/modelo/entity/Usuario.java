package golocal.modelo.entity;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
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
@Table(name="usuarios")
public class Usuario implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_usuario")
	private int idUsuario;
	private String dni;
	private String nombre;
	private String apellidos;
	private String email;
	private int telefono;
	private String contraseña;
	@Column(name="sobre_mi")
	private String sobreMi;
	private String username;
	@OneToOne
    @JoinColumn(name = "id_usuario", unique = true)
    private Guia guia;
	@OneToOne
    @JoinColumn(name = "id_usuario", unique = true)
	private Admin admin;
	@OneToOne
    @JoinColumn(name = "id_usuario", unique = true)
	private Cliente cliente;

}
