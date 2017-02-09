package com.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.model.User;

public interface UserService {

	void save(User user);

	void update(User user);

	User findByUsername(String username);

	public Page<User> getPage(Integer pageNumber);
	
	User findById(long id);

	public List<User> findAll();

	void deleteById(Long id);

}
