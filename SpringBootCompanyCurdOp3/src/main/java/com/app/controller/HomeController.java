package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Company;
import com.app.services.ServiceI;

@Controller
public class HomeController {

	@Autowired
	ServiceI ser;
	
	@RequestMapping("/")
	public String login() {
		return "loginPage";
	}
	
	@RequestMapping("/reg")
	public String register() {
		return "companyRegister";
	}
	
	@RequestMapping("/save")
	public String saveData(@ModelAttribute Company c)
	{
		ser.saveAllDetails(c);
		return "loginPage";
	}
	
	@RequestMapping("/login")
	public String previewData(@RequestParam("username") String un, @RequestParam("password") String ps,Model m) {
		List<Company> list = ser.getAllDetails(un,ps);
		
		m.addAttribute("Data",list);
		
		return "preview";
	}
	
	@RequestMapping("/deleteCompany")
	public String delete(@RequestParam("id") int id , Model m) {
		
	List<Company> list = ser.deleteCompanay(id);
	m.addAttribute("Data",list);
	
	return"preview";
	
	}
	
	@RequestMapping("/editCompany")
	public String edit(@RequestParam("id") int id,Model m) {
		
		Company company = ser.editData(id);
		m.addAttribute("com",company);
		return "edit";
			
	}
	
	@RequestMapping("/updateCompany")
	public String update(@ModelAttribute Company c, Model m) {
		
		List<Company> company = ser.updateData(c);
		
		m.addAttribute("Data",company);
		
		return "preview";
	}
	
}
