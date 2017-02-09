package com.repository;

import java.util.List;
import com.model.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository extends JpaRepository<User, Long > {

	User findByUsername(String username);
	
	User findById(long id);

	List<User> findAll();

	void deleteById(Long user);

}
