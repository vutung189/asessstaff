package com.service;


import java.util.Set;

import com.model.Role;

public interface RoleService {

	Set<Role> findByName(String name);

    
}
