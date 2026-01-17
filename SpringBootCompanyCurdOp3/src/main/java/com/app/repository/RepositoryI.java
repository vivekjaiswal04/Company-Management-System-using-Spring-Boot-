package com.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.model.Company;

@Repository
public interface RepositoryI extends JpaRepository<Company, Integer>{

	

	List<Company> findByUsernameAndPassword(String un, String ps);
 
}
