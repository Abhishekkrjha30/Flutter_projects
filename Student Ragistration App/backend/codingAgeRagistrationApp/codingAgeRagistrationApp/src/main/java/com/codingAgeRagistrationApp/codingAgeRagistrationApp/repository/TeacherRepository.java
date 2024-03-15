package com.codingAgeRagistrationApp.codingAgeRagistrationApp.repository;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Student;
import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Teacher;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TeacherRepository extends MongoRepository<Teacher,String> {
    Teacher findByName(String teacherName);
    Optional<Teacher> findByContact(String contact);

}
