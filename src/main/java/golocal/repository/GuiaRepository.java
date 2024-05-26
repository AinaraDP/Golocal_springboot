package golocal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import golocal.modelo.entity.Ciudad;
import golocal.modelo.entity.Guia;

public interface GuiaRepository extends JpaRepository<Guia, Integer>{
	
}
