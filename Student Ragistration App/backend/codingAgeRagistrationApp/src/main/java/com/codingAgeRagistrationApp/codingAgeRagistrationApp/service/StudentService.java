package com.codingAgeRagistrationApp.codingAgeRagistrationApp.service;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Student;

import java.util.List;

public interface StudentService {

    String createStudentId(Student student);

    List<Student> getAllStudentDetails();
     Student getStudentByPhoneNumber(String phoneNumber);

    }
