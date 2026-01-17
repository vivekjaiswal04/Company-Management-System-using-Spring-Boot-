package com.app.model;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class TestingDept {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int testDeptId;
	private String deptName;
	private String testingType;
	private String toolsUsed;
	
	@OneToMany(cascade = CascadeType.ALL)
	List<Tester> tester;

	public int getTestDeptId() {
		return testDeptId;
	}

	public void setTestDeptId(int testDeptId) {
		this.testDeptId = testDeptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getTestingType() {
		return testingType;
	}

	public void setTestingType(String testingType) {
		this.testingType = testingType;
	}

	public String getToolsUsed() {
		return toolsUsed;
	}

	public void setToolsUsed(String toolsUsed) {
		this.toolsUsed = toolsUsed;
	}

	public List<Tester> getTester() {
		return tester;
	}

	public void setTester(List<Tester> tester) {
		this.tester = tester;
	}

	
}
