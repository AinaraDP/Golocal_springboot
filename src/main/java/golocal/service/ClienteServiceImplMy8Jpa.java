package golocal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import golocal.modelo.entity.Cliente;
import golocal.repository.ClienteRepository;

@Service
public class ClienteServiceImplMy8Jpa implements ClienteService{

	@Autowired
	ClienteRepository clienteRepository;
	
	
	@Override
	public Cliente findByIdUsuario(int idUsuario) {
		
		return clienteRepository.findById(idUsuario).orElse(null);
	}

	
}
