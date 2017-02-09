package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.Role;
import com.model.User;
import com.repository.UserRepository;

import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;

//	@Autowired
//	private RoleRepository roleRepository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public void save(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		// user.setRoles(new HashSet<>(roleRepository.findAll()));
		userRepository.save(user);
	}

	@Override
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	@Override
	public List<User> findAll() {

		return userRepository.findAll();
	}

	
	private static final int PAGE_SIZE = 50;

    public Page<User> getPage(Integer pageNumber) {
        PageRequest request =
            new PageRequest(pageNumber - 1, PAGE_SIZE);
        return userRepository.findAll(request);
    }
	
	
	
	@Override
	public void deleteById(Long id) {
		User entity = userRepository.findById(id);
		boolean checkRole = true;
		for (Role role : entity.getRoles()) {
			if ("ROLE_ADMIN".equals(role.getName())) {
				checkRole = false;
				System.out.println("role admin error delete");
			}
		}
		if (checkRole) {
			userRepository.delete(id);
		}
	}

	@Override
	public User findById(long id) {
		return userRepository.findById(id);

	}

	public void update(User user) {

		System.out.println("user service id = " + user.getId());

		User entity = userRepository.findById(user.getId());

		if (entity != null) {
			entity.setId(user.getId());
			entity.setUsername(user.getUsername());
			entity.setPasswordConfirm(user.getPasswordConfirm());
			entity.setEmail(user.getEmail());

			if (!user.getPassword().equals(entity.getPassword())) {
				entity.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
			}

			entity.setFullName(user.getFullName());
			entity.setBirthDate(user.getBirthDate());
			entity.setGender(user.getGender());
			entity.setAddress(user.getAddress());
			entity.setPhone(user.getPhone());
			entity.setFaculty(user.getFaculty());
			entity.setDepartment(user.getDepartment());
			entity.setJobTitle(user.getJobTitle());
			entity.setAcademic(user.getAcademic());
			entity.setDegree(user.getDegree());
			entity.setOffice(user.getOffice());
			entity.setNote(user.getNote());

		} else {
			System.out.println("user service  entity null");
		}
	}

}
