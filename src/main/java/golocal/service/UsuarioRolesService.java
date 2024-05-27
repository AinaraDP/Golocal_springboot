package golocal.service;

import java.util.List;

import golocal.modelo.entity.UsuarioRoles;

public interface UsuarioRolesService {

	List<String> findRolesByUserId(int idUsuario);
}
