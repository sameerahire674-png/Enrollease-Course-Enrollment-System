package com.sam.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "course_db")   // table for login/register
@Data
public class register {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    @Column(unique = true)
    private String email;

    private String password;
}