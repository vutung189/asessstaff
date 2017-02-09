package com.controller;


import java.security.Principal;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.model.User;
import com.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	
	@RequestMapping(value = "user/info", method = RequestMethod.GET)
	public String userInfo(Model model,Principal principal) {

		String name = principal.getName(); 
		User user = userService.findByUsername(name);

		System.out.println("id user :" +user.getId() + "name : " +name);
		
		model.addAttribute("user", user);
		Map<String, String> genders = new LinkedHashMap<String, String>();
		genders.put("M", "Nam");
		genders.put("F", "Nữ");
		model.addAttribute("genders", genders);
		
		
		return "userInfo";
	}
	
	@RequestMapping(value = { "user/info" }, method = RequestMethod.POST)
	public String updateUserInfo(@Valid User user, BindingResult result, Model model,final RedirectAttributes redirectAttributes) {

		System.out.println(
				"user id update " + user.getId() + "\n user update username: " + user.getUsername());

		if (result.hasErrors()) {

			System.out.println("have error with form  ");

			return "userInfo";
		}

		userService.update(user);
		
		redirectAttributes.addFlashAttribute("message", "Cập nhật thông tin thành công");
		
		return "redirect:/user";
	}
	
	
}
