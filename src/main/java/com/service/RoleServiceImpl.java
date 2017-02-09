package com.service;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.Role;
import com.repository.RoleRepository;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleRepository roleRepository;
    
	@Override
	public Set<Role> findByName(String name) {
		// TODO Auto-generated method stub
		return roleRepository.findByName(name);
	}


	
}
