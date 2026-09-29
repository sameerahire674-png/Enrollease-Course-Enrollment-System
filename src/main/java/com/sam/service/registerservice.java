package com.sam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sam.entity.register;
import com.sam.repository.registerrepo;

@Service
public class registerservice {
	@Autowired
    private registerrepo repo;

    public void saveUser(register user) {
        repo.save(user);
    }
}
