package com.app.services;

import java.util.List;

import com.app.model.Company;

public interface ServiceI {

	void saveAllDetails(Company c);

	List<Company> getAllDetails(String un, String ps);

	List<Company> deleteCompanay(int id);

	Company editData(int id);

	List<Company> updateData(Company c); 
 
}
  