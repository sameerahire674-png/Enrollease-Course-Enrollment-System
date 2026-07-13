package com.sam.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sam.dto.StudentDto;
import com.sam.entity.Studentdetails;
import com.sam.service.StudentService;


@Controller
public class CourseController {

	@Autowired
	StudentService service;
	
	@GetMapping("/getallstudent")
	public String getallstudent(Model model) {
		List<Studentdetails>allstudent=service.getallstudent();
		model.addAttribute("students",allstudent);
		return "Students";
	}
	
	
	@GetMapping("/courses")
	public String getcourses() {
		return "courses";
	}
	
	@GetMapping("/enroll")
	public String getEnrollment(Model model) {
		Studentdetails student=new Studentdetails();
		model.addAttribute("student", student); 
		
		return "enrollment-form";
	}
	@PostMapping("/save")
	public String saveStudent(Studentdetails student, Model model) {
		
		Studentdetails savedstudent=service.saveStudent(student);
		//model.addAttribute("msg","Student Enroll the Course Successfully...");
		//model.addAttribute("student", new Studentdetails());
		System.err.println(savedstudent.getId());
		//return "enrollment-form";
		return "redirect:/dashboard/"+savedstudent.getId();
	}
		@GetMapping("/dashboard/{id}")
	public String getdashboard(@PathVariable int id,Model model) {
			
			System.err.println(id);
			StudentDto student=service.getByid(id);
			model.addAttribute("student", student);
		return "dashboard";
	}
	@GetMapping("/")
	public String homepage() {
		return "home";
	}
}
