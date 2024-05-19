package golocal.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
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
				.authorizeHttpRequests(authorize -> authorize.requestMatchers("/static/**").permitAll()
						.requestMatchers("/login", "/logout").permitAll().requestMatchers("/rest/encriptar/**")

						.authenticated())
				.formLogin(form -> form.loginPage("/login").permitAll())
				.logout((logout) -> logout.logoutSuccessUrl("/"));
		return http.build();
	}
}
