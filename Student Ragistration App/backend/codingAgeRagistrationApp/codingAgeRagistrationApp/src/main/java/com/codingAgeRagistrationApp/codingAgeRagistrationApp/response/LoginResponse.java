package com.codingAgeRagistrationApp.codingAgeRagistrationApp.response;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.User;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginResponse {
    private String token;
    private String type = "Bearer";
    private User user;

    public LoginResponse(String token, User user) {
        this.token = token;
        this.user = user;
    }

}
