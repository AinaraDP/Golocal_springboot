package golocal.service;

import golocal.modelo.entity.Cliente;

public interface ClienteService {

	Cliente findByIdUsuario(int idUsuario);
}
