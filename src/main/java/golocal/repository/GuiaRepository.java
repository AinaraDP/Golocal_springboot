package golocal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import golocal.modelo.entity.Guia;

public interface GuiaRepository extends JpaRepository<Guia, Integer>{
	
}
