package com.codingAgeRagistrationApp.codingAgeRagistrationApp.service;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Student;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Teacher;

import java.util.List;

public interface TeacherService {

    String createTeacherId(Teacher teacher);

    List<Teacher> getAllTecherDetails();

    Teacher getTeacherByPhoneNumber(String phoneNumber);

}
