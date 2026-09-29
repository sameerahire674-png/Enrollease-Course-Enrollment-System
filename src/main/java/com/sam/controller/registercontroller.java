package com.sam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sam.entity.register;
import com.sam.service.registerservice;

@Controller
public class registercontroller {
	 @Autowired
	    private registerservice service;

	    @GetMapping("/signup")
	    public String showForm() {
	        return "register";  // register.jsp
	    }

	    @PostMapping("/saveUser")
	    public String saveUser(@ModelAttribute register user) {
	        service.saveUser(user);
	        return "success";   // success.jsp
	    }
}
