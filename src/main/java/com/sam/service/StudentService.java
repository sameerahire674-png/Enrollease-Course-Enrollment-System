package com.sam.service;

import java.util.Arrays;
import jakarta.validation.Valid;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sam.dto.StudentDto;
import com.sam.entity.Studentdetails;
import com.sam.repository.studentrepository;

@Service
public class StudentService {
	@Autowired
	studentrepository studrepo;
	
	public List<Studentdetails>getallstudent(){
		return studrepo.findAll();
		
	}
	
	public StudentDto getByid(int id) {
		Studentdetails st=null;
		Optional<Studentdetails> op=studrepo.findById(id);
		if(op.isPresent()) {
			st =op.get();
		}
		
		//why the create this method because timing is convert in tostring method so all the filed are set important.
		StudentDto dto=new StudentDto();
		dto.setId(st.getId());
		dto.setName(st.getName());
		dto.setAddress(st.getAddress());
		dto.setEmail(st.getEmail());
		dto.setGender(st.getGender());
		dto.setMobilNo(st.getMobilNo());
		dto.setCourseprice(st.getCourseprice());
		dto.setTiming(Arrays.toString(st.getTiming()));
		dto.setCourse(st.getCourse());
		return dto;
	}
	
	public Studentdetails saveStudent(Studentdetails student) {

	    String course = student.getCourse();

	   

	    if (course.equalsIgnoreCase("Java Full Stack")) {

	        student.setCourseprice(50000.00);

	    } else if (course.equalsIgnoreCase("Spring Boot")) {

	        student.setCourseprice(45000.00);

	    } else if (course.equalsIgnoreCase("Python")) {

	        student.setCourseprice(40000.00);

	    } else if (course.equalsIgnoreCase("Data Structures")) {

	        student.setCourseprice(35000.00);

	    } else if (course.equalsIgnoreCase("Web Development")) {

	        student.setCourseprice(30000.00);

	    } else if (course.equalsIgnoreCase("Cloud AWS")) {

	        student.setCourseprice(55000.00);

	    } else if (course.equalsIgnoreCase("AI ML")) {

	        student.setCourseprice(70000.00);

	    } else {

	        throw new IllegalArgumentException("Invalid course selected"+course);
	    }

	    return studrepo.save(student);
	}
}
