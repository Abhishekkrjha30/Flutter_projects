package com.codingAgeRagistrationApp.codingAgeRagistrationApp.service.impl;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.exception.CustomException;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Student;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.repository.StudentRepository;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.service.StudentService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class StudentServiceImpl implements StudentService {
    @Autowired
    StudentRepository studentRepository;

    @Override
    public String createStudentId(Student student) {
        studentRepository.save(student);
        return "Id Created Successfully.";
    }

    @Override
    public List<Student> getAllStudentDetails() {
        return  studentRepository.findAll();
    }

    @Override
    public Student getStudentByPhoneNumber(String phoneNumber) {

        log.info("getStudentByPhoneNumber method called with phone number {}", phoneNumber );
        return studentRepository.findByContact(phoneNumber).orElseThrow(() -> new CustomException("Phone Number Not Found", "50001"));
    }

}
