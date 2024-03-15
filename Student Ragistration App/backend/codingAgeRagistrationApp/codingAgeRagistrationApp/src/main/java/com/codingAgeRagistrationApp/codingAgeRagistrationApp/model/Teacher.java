package com.codingAgeRagistrationApp.codingAgeRagistrationApp.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;

@Document("teacher")
@Setter
@Getter
public class Teacher {
    @Id
    private String id;
    private String name;
    private String contact;
    private String address;
    List<String> subject;

}
