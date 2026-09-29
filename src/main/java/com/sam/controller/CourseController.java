package com.sam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.sam.dto.StudentDto;
import com.sam.entity.Studentdetails;
import com.sam.service.StudentService;

import jakarta.validation.Valid;

@Controller
public class CourseController {

    @Autowired
    StudentService service;

    // 👉 Home Page
    @GetMapping("/")
    public String homepage() {
        return "home";
    }

    // 👉 Register Page
//    @GetMapping("/register")
//    public String registerpage() {
//        return "register";
//    }

    // 👉 Login Page
    @GetMapping("/login")
    public String loginpage() {
        return "login";
    }

    // 👉 Save Registration
//    
    @PostMapping("/register")
    public String registerStudent(
            @Valid @ModelAttribute("student") Studentdetails student,
            BindingResult result,
            Model model) {

        if (result.hasErrors()) {
            return "register";
        }

        service.saveStudent(student);

        model.addAttribute("msg", "Registration Successful! Please Login.");

        return "login";
    }

    // 👉 Login Logic
//    @PostMapping("/login")
//    public String loginUser(@RequestParam String email,
//                            @RequestParam String password,
//                            Model model) {
//
//        Studentdetails student = service.login(email, password);
//
//        if (student != null) {
//            return "redirect:/dashboard/" + student.getId();
//        } else {
//            model.addAttribute("error", "Invalid Email or Password!");
//            return "login";
//        }
//    }

    // 👉 Get All Students
    @GetMapping("/getallstudent")
    public String getallstudent(Model model) {
        List<Studentdetails> allstudent = service.getallstudent();
        model.addAttribute("Students", allstudent);
        return "Students";
    }

    // 👉 Courses Page
    @GetMapping("/courses")
    public String getcourses() {
        return "courses";
    }

    // 👉 Enrollment Page
    @GetMapping("/enroll")
    public String getEnrollment(Model model) {
        model.addAttribute("student", new Studentdetails());
        return "enrollment-form";
    }

    // 👉 Save Enrollment
//    @PostMapping("/save")
//    public String saveStudent(Studentdetails student) {
//        Studentdetails savedstudent = service.saveStudent(student);
//        return "redirect:/dashboard/" + savedstudent.getId();
//    }
    
    @PostMapping("/save")
    public String saveStudent(
            @Valid @ModelAttribute("student") Studentdetails student,
            BindingResult result,
            Model model) {

        if (result.hasErrors()) {
            return "enrollment-form";
        }

        Studentdetails savedstudent = service.saveStudent(student);

        return "redirect:/dashboard/" + savedstudent.getId();
    }

    // 👉 Dashboard
    @GetMapping("/dashboard/{id}")
    public String getdashboard(@PathVariable int id, Model model) {
        StudentDto student = service.getByid(id);
        model.addAttribute("student", student);
        return "dashboard";
    }
}