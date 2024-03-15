package com.codingAgeRagistrationApp.codingAgeRagistrationApp.controller;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.exception.CustomException;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.User;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.repository.RolesRepository;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.repository.UserRepository;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.request.LoginRequest;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.request.SignupRequest;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.response.LoginResponse;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.security.UserDetailsImpl;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.security.jwt.JwtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/auth")
public class AuthController {
    @Autowired
    AuthenticationManager authenticationManager;

    @Autowired
    UserRepository userRepository;

    @Autowired
    RolesRepository roleRepository;

    @Autowired
    PasswordEncoder encoder;


    @Autowired
    JwtUtils jwtUtils;

    @PostMapping("/signin")
    public LoginResponse authenticateUser(
            @RequestBody LoginRequest loginRequest) {

        Authentication authentication =
                authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(
                        loginRequest.getUsername(), loginRequest.getPassword()));

        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = jwtUtils.generateJwtToken(authentication);

        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        List<String> roles = userDetails.getAuthorities().stream().map(item -> item.getAuthority())
                .collect(Collectors.toList());
        User user = userRepository.findByUsername(userDetails.getUsername()).orElseThrow(() -> new CustomException("user", "not exists"));

        LoginResponse loginResponse = new LoginResponse(jwt,user);

        return loginResponse;
    }

    @PostMapping("/signup")
    public Object registerUser( @RequestBody SignupRequest signUpRequest) {
        if (userRepository.existsByUsername(signUpRequest.getContact())) {
            return ResponseEntity.badRequest()
                    .body("Error: This contact number is is already registered!");
        }

        User user = new User(signUpRequest.getContact(), signUpRequest.getContact(),
                encoder.encode(signUpRequest.getPassword()), signUpRequest.getContact(), true, true);


        Set<String> roles = new HashSet<>();
        roles.add("USER");
        user.setRoles(roles);
        User savedUser = userRepository.save(user);
        savedUser.setActivated(true);

        userRepository.save(savedUser);

        return ResponseEntity.ok("User registered successfully!");
    }
}
