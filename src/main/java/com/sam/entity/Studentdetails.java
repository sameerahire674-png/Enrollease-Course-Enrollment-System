package com.sam.entity;

import jakarta.persistence.Entity;
import jakarta.validation.Valid;
import org.springframework.validation.BindingResult;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;


@Entity(name="Sourse_Enrolled_Students")
@Data
public class Studentdetails {
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
private Integer id;
	 @NotBlank(message = "Name is required")
	    private String name;

	    @NotBlank(message = "Email is required")
	    private String email;

	    @NotBlank(message = "Course is required")
	    private String course;

	    @NotBlank(message = "Gender is required")
	    private String gender;

	    @NotBlank(message = " Select at least one Timing is required")
	    private String []timing;

	    @NotBlank(message = "Address is required")
	    private String address;

	    @NotBlank(message = "Mobile number is required")
	    private String mobilNo;

	    @NotNull(message = "Course price is required")
	    private Double courseprice;

}
