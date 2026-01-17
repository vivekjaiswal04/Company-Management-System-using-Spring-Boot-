package com.app.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;

@Entity
public class Company {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int companyId;
	private String companyName;
	private String location;
	private String ceoName;
	private String username;
	private String password;
	
	@OneToOne(cascade = CascadeType.ALL)
	private DeveloperDept devDept;
	
	@OneToOne(cascade = CascadeType.ALL)
	private TestingDept testDept;

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getCeoName() {
		return ceoName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public DeveloperDept getDevDept() {
		return devDept;
	}

	public void setDevDept(DeveloperDept devDept) {
		this.devDept = devDept;
	}

	public TestingDept getTestDept() {
		return testDept;
	}

	public void setTestDept(TestingDept testDept) {
		this.testDept = testDept;
	}
	
	
}
