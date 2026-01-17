package com.app.model;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;

@Entity
public class DeveloperDept {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int devDeptId;
	private String deptName;
	private String projectName;
	
	@OneToMany(cascade = CascadeType.ALL)
	List<Developer> developer;

	public int getDevDeptId() {
		return devDeptId;
	}

	public void setDevDeptId(int devDeptId) {
		this.devDeptId = devDeptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public List<Developer> getDeveloper() {
		return developer;
	}

	public void setDeveloper(List<Developer> developer) {
		this.developer = developer;
	}

	
}
