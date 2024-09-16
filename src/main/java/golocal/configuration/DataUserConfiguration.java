package golocal.configuration;

import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;

@Configuration
public class DataUserConfiguration {

	
	/**
     * Configura un UserDetailsManager para usuarios que son clientes utilizando una fuente 
     * de datos JDBC.
     *
     * @param dataSource la fuente de datos utilizada para las consultas
     * @return una instancia de JdbcUserDetailsManager de los clientes
     */
	@Bean
	public UserDetailsManager clientesUserDetailsManager(DataSource dataSource) {
		JdbcUserDetailsManager users = new JdbcUserDetailsManager(dataSource);
		users.setUsersByUsernameQuery("select username, contraseña, enabled from usuarios where username = ?");
		users.setAuthoritiesByUsernameQuery("select u.username from usuarios u "
				+ "inner join clientes c on u.id_usuario = c.id_usuario " + "where u.username = ?");
		return users;
	}

	/**
     * Configura un UserDetailsManager para usuarios que son guias utilizando una fuente 
     * de datos JDBC.
     *
     * @param dataSource la fuente de datos utilizada para las consultas
     * @return una instancia de JdbcUserDetailsManager de los guias
     */
	@Bean
	public UserDetailsManager guiasUserDetailsManager(DataSource dataSource) {
		JdbcUserDetailsManager users = new JdbcUserDetailsManager(dataSource);
		users.setUsersByUsernameQuery("select username, contraseña, enabled from usuarios where username = ?");
		users.setAuthoritiesByUsernameQuery("select u.username from usuarios u "
				+ "inner join guias g on u.id_usuario = g.id_usuario " + "where u.username = ?");
		return users;
	}

	/**
     * Configura un UserDetailsManager para usuarios que son administradores utilizando una fuente 
     * de datos JDBC.
     *
     * @param dataSource la fuente de datos utilizada para las consultas
     * @return una instancia de JdbcUserDetailsManager de los administradores
     */
	@Bean
	public UserDetailsManager adminsUserDetailsManager(DataSource dataSource) {
		JdbcUserDetailsManager users = new JdbcUserDetailsManager(dataSource);
		users.setUsersByUsernameQuery("select username, contraseña, enabled from usuarios where username = ?");
		users.setAuthoritiesByUsernameQuery("select u.username from usuarios u "
				+ "inner join admins a on u.id_usuario = a.id_usuario " + "where u.username = ?");
		return users;
	}
}
