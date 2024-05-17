package golocal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import golocal.modelo.entity.Guia;
import golocal.repository.GuiaRepository;

@Service
public class GuiaServiceMyImpl8Jpa implements GuiaService{

	@Autowired
	GuiaRepository guiaRepository;
	
	
	@Override
	public List<Guia> findAll() {
		return guiaRepository.findAll();
	}

	
}
