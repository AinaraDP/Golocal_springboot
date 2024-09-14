package golocal.service;

import java.util.List;

public interface UsuarioRolesService {

	List<String> findRolesByUserId(int idUsuario);
}
