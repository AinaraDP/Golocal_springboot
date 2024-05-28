package golocal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import golocal.modelo.entity.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Integer>{

}
