package com.codingAgeRagistrationApp.codingAgeRagistrationApp.controller;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Student;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/v1/student")
public class StudentController {

    @Autowired
    StudentService studentService;

    @PostMapping("/createStudentId")
    String createStudentId(@RequestBody Student student){
        return studentService.createStudentId(student);
    }

    @GetMapping("/getallstudentdetails")
    List<Student> getAllStudentDetails(){
        return studentService.getAllStudentDetails();
    }


}
