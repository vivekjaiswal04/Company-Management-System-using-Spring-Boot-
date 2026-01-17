package com.app.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 import com.app.model.Company;
import com.app.model.Developer;
import com.app.model.Tester;
import com.app.repository.RepositoryI;

@Service
public class serviceImpl implements ServiceI{

   

	@Autowired
	RepositoryI ri;

    

	@Override
	public void saveAllDetails(Company c) {
		ri.save(c);
		
	}

	@Override
	public List<Company> getAllDetails(String un, String ps) {
		if (un.equals("admin") && ps.equals("admin")) {
			
			return ri.findAll();
		}
		else {
			
		List<Company> list = ri.findByUsernameAndPassword(un,ps);
			
		return list;
		
		}
	}

	@Override
	public List<Company> deleteCompanay(int id) {
		ri.deleteById(id);
		List<Company> list = ri.findAll();
		return list;
	}

	@Override
	public Company editData(int id) {
		
		Optional<Company> com = ri.findById(id);
		
		if (com.isPresent()) {
			Company com1 = com.get();
			return com1;
		}
		return null;
	}

	@Override
	public List<Company> updateData(Company c) {
		
	Optional<Company> op= ri.findById(c.getCompanyId());
	
	if (op.isPresent()) {
			Company op1 = op.get();
			
			op1.setCompanyName(c.getCompanyName());
			op1.setLocation(c.getLocation());
			op1.setCeoName(c.getCeoName());
			op1.setUsername(c.getUsername());
			op1.setPassword(c.getPassword());
			op1.getDevDept().setDeptName(c.getDevDept().getDeptName());
			op1.getDevDept().setProjectName(c.getDevDept().getProjectName());
			op1.getTestDept().setDeptName(c.getTestDept().getDeptName());
			op1.getTestDept().setTestingType(c.getTestDept().getTestingType());
			op1.getTestDept().setToolsUsed(c.getTestDept().getToolsUsed());
			
			List<Developer> odev = op1.getDevDept().getDeveloper();
			List<Developer> ndev = c.getDevDept().getDeveloper();
			for(int i = 0; i < odev.size();i++) 
			{
				    Developer  oldev = odev.get(i);
				    Developer nedev = ndev.get(i);
				    
				    oldev.setDevName(nedev.getDevName());
				    oldev.setExperience(nedev.getExperience());
				    oldev.setSalary(nedev.getSalary());
			}
			
			List<Tester> otest = op1.getTestDept().getTester();
			List<Tester> ntest = c.getTestDept().getTester();
			
			for(int i = 0; i < otest.size(); i++) {
				
				Tester oltest = otest.get(i);
				Tester netest =	ntest.get(i);
				
				oltest.setTestName(netest.getTestName());
				oltest.setExperience(netest.getExperience());
				oltest.setSalary(netest.getSalary());
			}
			
			ri.save(op1);
			return ri.findAll();
	}
		return null;
	}
}












