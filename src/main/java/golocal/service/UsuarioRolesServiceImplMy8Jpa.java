package golocal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import golocal.modelo.entity.UsuarioRoles;
import golocal.repository.UsuarioRolesRepository;

@Service
public class UsuarioRolesServiceImplMy8Jpa implements UsuarioRolesService{

	@Autowired
	UsuarioRolesRepository usuarioRolesRepository;

	@Override
	public UsuarioRoles findByIdUsuario(int idUsuario) {

		return usuarioRolesRepository.findByUsuarioIdUsuario(idUsuario);
	}
	

}
