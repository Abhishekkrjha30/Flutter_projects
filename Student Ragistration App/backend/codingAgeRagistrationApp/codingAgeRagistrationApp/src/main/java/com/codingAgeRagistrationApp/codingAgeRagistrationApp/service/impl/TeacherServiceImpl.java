package com.codingAgeRagistrationApp.codingAgeRagistrationApp.service.impl;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.exception.CustomException;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Student;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Teacher;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.repository.TeacherRepository;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.service.TeacherService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class TeacherServiceImpl implements TeacherService {

    @Autowired
    TeacherRepository teacherRepository;
    @Override
    public String createTeacherId(Teacher teacher) {
        teacherRepository.save(teacher);
        return "Id Created Successfully";
    }

    @Override
    public List<Teacher> getAllTecherDetails() {
        return teacherRepository.findAll();
    }

    @Override
    public Teacher getTeacherByPhoneNumber(String phoneNumber) {

        log.info("getTeacherByPhoneNumber method called with phone number {}", phoneNumber );
        return teacherRepository.findByContact(phoneNumber).orElseThrow(() -> new CustomException("Phone Number Not Found", "50001"));
    }

}
