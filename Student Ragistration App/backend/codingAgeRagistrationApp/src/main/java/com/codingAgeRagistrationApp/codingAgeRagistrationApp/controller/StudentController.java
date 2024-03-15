package com.codingAgeRagistrationApp.codingAgeRagistrationApp.controller;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Student;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.User;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.repository.UserRepository;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.service.StudentService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/v1/student")
public class StudentController {

    @Autowired
    StudentService studentService;
    @Autowired
    UserRepository userRepository;

    @PostMapping("/createStudentId")
    String createStudentId(@RequestBody Student student){
        return studentService.createStudentId(student);
    }

    @GetMapping("/getallstudentdetails")
    List<Student> getAllStudentDetails(){
        return studentService.getAllStudentDetails();
    }

    @GetMapping("/getalluserdetails")
    List<User> getAlluserDetails(){
        return userRepository.findAll();
    }

    @GetMapping("/getuserdetail")
    Optional<User> getuserDetails(HttpServletRequest request){
        String userName=request.getRemoteUser();
        return userRepository.findByUsername(userName);
    }

}


