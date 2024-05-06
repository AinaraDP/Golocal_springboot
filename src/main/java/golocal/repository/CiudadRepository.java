package golocal.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import golocal.modelo.entity.Ciudad;

public interface CiudadRepository extends JpaRepository<Ciudad, Integer>{

}
