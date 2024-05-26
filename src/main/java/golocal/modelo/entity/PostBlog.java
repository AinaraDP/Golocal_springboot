package golocal.modelo.entity;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
@Table(name="post_blog")
public class PostBlog implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_post")
	private int idPost;
	@ManyToOne
	@JoinColumn(name="id_admin")
	private Admin admin;
	private String titulo;
	private String parrafo1;
	private String contenido1;
	private String parrafo2;
	private String contenido2;
	private String parrafo3;
	private String contenido3;
	private String parrafo4;
	private String contenido4;
	private String autor;
	@Column(name="fecha_publi")
	private Date fechaPubli;
	private String descripcion;
	@Column(name="minutos_lectura")
	private int minutosLectura;
	
	
	
	
}
