package com.codingAgeRagistrationApp.codingAgeRagistrationApp.repository;

import com.codingAgeRagistrationApp.codingAgeRagistrationApp.model.Roles;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RolesRepository extends MongoRepository<Roles, String> {
}
