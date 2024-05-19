package golocal.configuration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;

@Configuration
public class DataUserConfiguration {

	@Bean
	public UserDetailsManager clientesUserDetailsManager(DataSource dataSource) {
		JdbcUserDetailsManager users = new JdbcUserDetailsManager(dataSource);
		users.setUsersByUsernameQuery("select username, password, enabled from usuarios where username = ?");
		users.setAuthoritiesByUsernameQuery("select u.username, 'ROLE_CLIENTE' from usuarios u "
				+ "inner join clientes c on u.id_usuario = c.id_usuario " + "where u.username = ?");
		return users;
	}

	@Bean
	public UserDetailsManager guiasUserDetailsManager(DataSource dataSource) {
		JdbcUserDetailsManager users = new JdbcUserDetailsManager(dataSource);
		users.setUsersByUsernameQuery("select username, password, enabled from usuarios where username = ?");
		users.setAuthoritiesByUsernameQuery("select u.username, 'ROLE_GUIA' from usuarios u "
				+ "inner join guias g on u.id_usuario = g.id_usuario " + "where u.username = ?");
		return users;
	}

	@Bean
	public UserDetailsManager adminsUserDetailsManager(DataSource dataSource) {
		JdbcUserDetailsManager users = new JdbcUserDetailsManager(dataSource);
		users.setUsersByUsernameQuery("select username, password, enabled from usuarios where username = ?");
		users.setAuthoritiesByUsernameQuery("select u.username, 'ROLE_ADMIN' from usuarios u "
				+ "inner join admins a on u.id_usuario = a.id_usuario " + "where u.username = ?");
		return users;
	}

	 
}
