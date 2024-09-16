package golocal.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;


@EnableWebSecurity
@Configuration
public class FilterChainConfiguration {

	/**
     * Configura la autenticación mediante múltiples instancias de UserDetailsManager.
     *
     * @param auth  el AuthenticationManagerBuilder es el encargado de construir el 
     * 		  el administrador de autenticación
     * @param clientesUserDetailsManager UserDetailsManager para usuarios clientes
     * @param guiasUserDetailsManager    UserDetailsManager para usuarios guías
     * @param adminsUserDetailsManager   UserDetailsManager para usuarios administradores
     */
	@Autowired
    public void configure(AuthenticationManagerBuilder auth, UserDetailsManager clientesUserDetailsManager,
                          UserDetailsManager guiasUserDetailsManager, UserDetailsManager adminsUserDetailsManager) throws Exception {
        auth.userDetailsService(clientesUserDetailsManager);
        auth.userDetailsService(guiasUserDetailsManager);
        auth.userDetailsService(adminsUserDetailsManager);
    }
	
	
	/**
     * Configura los ajustes de seguridad HTTP y los permisos de las URLs
     *
     * @param http la instancia de HttpSecurity utilizada para configurar la seguridad basada en web
     * @return una instancia de SecurityFilterChain configurada con HttpSecurity
     * @throws Exception si ocurre un error al configurar la seguridad HTTP
     */
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
	    http.csrf(csrf -> csrf.disable())
	        .authorizeHttpRequests(authorize -> authorize
	            .requestMatchers("/login", "/logout", "/reserva/crearNueva").permitAll()
	            .requestMatchers("/itinerario/**").permitAll()  // Permitir acceso sin autenticación a itinerarios
	            .requestMatchers("/clientes/**").permitAll()  // Permitir acceso sin autenticación a clientes
	            .requestMatchers("/guia/**").permitAll()
	            .requestMatchers("/blog/**").permitAll()
	            .requestMatchers("/reserva/**").permitAll()
	        	.requestMatchers("/review/**").permitAll()
	        	.requestMatchers("/usuarioRoles/rol/**").permitAll()
	        	
	        	.requestMatchers("/user-profile/**").permitAll()
	            .requestMatchers("/publicar-ruta").hasAnyAuthority("ROL_GUIA", "ROL_ADMIN")
	            .anyRequest().authenticated()
	        );
	    return http.build();
	}
	
	

	


	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
