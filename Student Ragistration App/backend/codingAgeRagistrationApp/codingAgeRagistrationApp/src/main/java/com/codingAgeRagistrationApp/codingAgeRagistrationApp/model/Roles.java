package com.codingAgeRagistrationApp.codingAgeRagistrationApp.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document("roles")
@Getter
@Setter
public class Roles {
    @Id
    private String id;
    private String name;
}
