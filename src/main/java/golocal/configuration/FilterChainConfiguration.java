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

	@Autowired
    public void configure(AuthenticationManagerBuilder auth, UserDetailsManager clientesUserDetailsManager,
                          UserDetailsManager guiasUserDetailsManager, UserDetailsManager adminsUserDetailsManager) throws Exception {
        auth.userDetailsService(clientesUserDetailsManager);
        auth.userDetailsService(guiasUserDetailsManager);
        auth.userDetailsService(adminsUserDetailsManager);
    }
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.csrf(csrf -> csrf.disable())
				.authorizeHttpRequests(authorize -> authorize
						.requestMatchers("/login", "/logout", "/**").permitAll()
						.requestMatchers("/publicar-ruta").hasAnyAuthority("ROL_GUIA", "ROL_ADMIN")
						
						)
				;
		return http.build();
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
