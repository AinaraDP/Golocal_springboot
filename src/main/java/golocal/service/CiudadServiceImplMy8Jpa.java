package golocal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import golocal.modelo.entity.Ciudad;
import golocal.repository.CiudadRepository;


@Service
public class CiudadServiceImplMy8Jpa implements CiudadService{

	@Autowired
	CiudadRepository ciudadRepository;
	
	@Override
	public List<Ciudad> findAll() {
		
		return ciudadRepository.findAll();
	}

}
