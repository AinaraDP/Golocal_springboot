package golocal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import golocal.modelo.entity.UsuarioRoles;
import golocal.repository.UsuarioRolesRepository;

@Service
public class UsuarioRolesServiceImplMy8Jpa implements UsuarioRolesService{

	@Autowired
	UsuarioRolesRepository usuarioRolesRepository;

	@Override
	public List<String> findRolesByUserId(int idUsuario) {

		return usuarioRolesRepository.findRolesByUserId(idUsuario);
	}

}
