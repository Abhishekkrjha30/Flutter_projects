package com.codingAgeRagistrationApp.codingAgeRagistrationApp.response;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.User;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class LoginResponse {
    private String token;
    private String type = "Bearer";
    private User user;

    public LoginResponse(String token, User user) {
        this.token = token;
        this.user = user;
    }public LoginResponse(String s) {
        this.token = token;
    }

}
