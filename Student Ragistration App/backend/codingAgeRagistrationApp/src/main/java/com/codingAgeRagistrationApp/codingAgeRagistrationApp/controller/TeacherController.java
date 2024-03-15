package com.codingAgeRagistrationApp.codingAgeRagistrationApp.controller;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Student;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Teacher;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.repository.TeacherRepository;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/v1/teacher")
public class TeacherController {
    @Autowired
    TeacherService teacherService;

    @PostMapping("/createTeacherId")
    String createTeacherId(@RequestBody Teacher teacher){
        return teacherService.createTeacherId(teacher);
    }

    @GetMapping("/getallteacherdetails")
    List<Teacher> getAllTeacherDetails(){
        return teacherService.getAllTecherDetails();
    }


}
