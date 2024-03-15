package com.codingAgeRagistrationApp.codingAgeRagistrationApp.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Set;

@Document("user")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @Id
    private String id;
    private String username;
    private String firstName;
    private String lastName;
    private String email;
    private String contactNumber;
    private boolean activated;
    private boolean isAccountNonExpired;

    private Set<String> roles;

    @JsonIgnore
    private String password;

    public User(String username, String email, String password, String contact, boolean activated, boolean accountNonExpired) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.contactNumber = contact;
        this.activated = activated;
        this.isAccountNonExpired = accountNonExpired;
    }
}
