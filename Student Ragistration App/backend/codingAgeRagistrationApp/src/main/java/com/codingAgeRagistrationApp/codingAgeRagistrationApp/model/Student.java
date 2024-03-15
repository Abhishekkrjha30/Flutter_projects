package com.codingAgeRagistrationApp.codingAgeRagistrationApp.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document("student")
@Setter
@Getter
public class Student {
    @Id
    private String id;
    private String name;
    private String rollno;
    private String batch;
    private long contact;

    private String email;
}
