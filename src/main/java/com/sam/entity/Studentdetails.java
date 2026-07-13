package com.sam.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity(name="Sourse_Enrolled_Students")
@Data
public class Studentdetails {
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
private Integer id;
private String name;
private String email;
private String course;
private String gender;
private String []timing ;
private String mobilNo;
private String address;
private Double courseprice;

}
