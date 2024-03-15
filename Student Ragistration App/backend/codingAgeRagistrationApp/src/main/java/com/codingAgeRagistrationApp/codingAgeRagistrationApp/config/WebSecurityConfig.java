package com.codingAgeRagistrationApp.codingAgeRagistrationApp.config;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.security.jwt.AuthTokenFilter;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;

import static org.springframework.security.config.http.SessionCreationPolicy.STATELESS;
import static org.springframework.security.web.util.matcher.AntPathRequestMatcher.antMatcher;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
@EnableMethodSecurity
public class WebSecurityConfig {
    private static final String[] WHITE_LIST_URL = {"/api/v1/auth/**",
            "/v2/api-docs",
            "/v3/api-docs",
            "/v3/api-docs/**",
            "/swagger-resources",
            "/swagger-resources/**",
            "/configuration/ui",
            "/configuration/security",
            "/swagger-ui/**",
            "/webjars/**",
            "/swagger-ui.html"};
    @Autowired
    private final AuthTokenFilter jwtAuthFilter;
    @Autowired
    private final AuthenticationProvider authenticationProvider;


    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http, HandlerMappingIntrospector introspector) throws Exception {
        http
                .csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests(req ->
//                                req.requestMatchers(WHITE_LIST_URL)
//                                        .permitAll()
                                req.requestMatchers(antMatcher("/api/auth/**")).permitAll()
                                        .requestMatchers(antMatcher("/swagger-ui.html/**")).permitAll()
                                        .requestMatchers(antMatcher("/swagger-resources/**")).permitAll()
                                        .requestMatchers(antMatcher("/v2/api-docs")).permitAll()
                                        .requestMatchers(antMatcher("/v3/api-docs")).permitAll()
                                        .requestMatchers(antMatcher("/v3/api-docs/swagger-config")).permitAll()
                                        .requestMatchers(antMatcher("/configuration/ui")).permitAll()
                                        .requestMatchers(antMatcher("/swagger-resources/**")).permitAll()
                                        .requestMatchers(antMatcher("/configuration/security")).permitAll()
                                        .requestMatchers(antMatcher("/swagger-ui.html")).permitAll()
                                        .requestMatchers(antMatcher("/swagger-ui/*")).permitAll()
                                        .requestMatchers(antMatcher("/webjars/**")).permitAll()
                                        .requestMatchers(antMatcher("/v2/**")).permitAll()
                                      //  .requestMatchers(PathRequest.toH2Console()).permitAll()

                                        .anyRequest()
                                        .authenticated()
                )
                .sessionManagement(session -> session.sessionCreationPolicy(STATELESS))
                .authenticationProvider(authenticationProvider)
                .addFilterBefore(jwtAuthFilter, UsernamePasswordAuthenticationFilter.class)
        ;

        return http.build();
    }


}
