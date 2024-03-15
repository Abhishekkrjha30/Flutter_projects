package com.codingAgeRagistrationApp.codingAgeRagistrationApp.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SignupRequest {

    private String username;
    private String firstName;
    private String lastName;
    private String email;
    private String contactNumber;
    private String password;
}
