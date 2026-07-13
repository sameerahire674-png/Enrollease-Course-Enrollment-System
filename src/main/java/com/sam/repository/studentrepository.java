package com.sam.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sam.entity.Studentdetails;

public interface studentrepository extends JpaRepository<Studentdetails, Integer> {

}
