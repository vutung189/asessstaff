package com.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.ExchangeTimeTeaching;
import com.model.SynthesisTeaching;
import com.model.User;
import com.service.ExchangeTimeTeachingService;
import com.service.SynthesisTeachingService;

@Controller
public class ExchangeTimeController {
	

	@Autowired
	private ExchangeTimeTeachingService exchangeTimeTeachingService;
	
	/* exchange time teaching controller */
	@RequestMapping(value = "admin/ExchangeTimeTeaching", method = RequestMethod.GET)
	public String exchangeTimeTeaching(Model model) {
		
		List<ExchangeTimeTeaching> exchangeTimeTeaching = exchangeTimeTeachingService.findAll();

		model.addAttribute("exchangeTimeTeaching", exchangeTimeTeaching);
		
		return "admins/exchangeTimeTeaching";
	}
	
	
	@RequestMapping(value="admin/ExchangeTimeTeaching/edit-{id}",method =RequestMethod.GET)
	public String exchangeTimeTeachingEdit (@PathVariable long id ,Model model){
		
		ExchangeTimeTeaching exchangeTimeTeaching = exchangeTimeTeachingService.findById(id);
		
		model.addAttribute("exchangeTime", exchangeTimeTeaching);
		
		Map<String, String> language = new LinkedHashMap<String, String>();
		language.put("TA", "TA");
		language.put("TV", "TV");
		model.addAttribute("language", language);

		Map<String, String> program = new LinkedHashMap<String, String>();
		program.put("Chuẩn", "Chuẩn");
		program.put("NVCL", "NVCL");
		program.put("CLC", "CLC");
		model.addAttribute("program", program);
		
		
		Map<String, String> levelEducation = new LinkedHashMap<String, String>();
		levelEducation.put("Đại học", "Đại học");
		levelEducation.put("Sau đại học", "Sau đại học");
		model.addAttribute("levelEducation", levelEducation);
		
		
		Map<String, String> type = new LinkedHashMap<String, String>();
		type.put("Lý thuyết", "Lý thuyết");
		type.put("Thực hành", "Thực hành");
		type.put("Tự học", "Tự học");
		type.put("Thực tập thực địa", "Thực tập thực địa");
		type.put("Khóa luận tốt nghiệp", "Khóa luận tốt nghiệp");
		type.put("Đồ án tốt nghiệp", "Đồ án tốt nghiệp");
		type.put("Luận văn thạc sỹ", "Luận văn thạc sỹ");
		type.put("Luận án Tiến sỹ", "Luận án Tiến sỹ");
		type.put("Huấn luyện đội tuyển dự thi Olympic Quốc gia,Quốc tế", "Huấn luyện đội tuyển dự thi Olympic Quốc gia,Quốc tế");
		type.put("Cố vấn học tập", "Cố vấn học tập");

		
		model.addAttribute("type", type);
		
		
		return "admins/editExchangeTimeTeaching";		
	}
	@RequestMapping(value="admin/ExchangeTimeTeaching/edit-{id}",method =RequestMethod.POST)
	public String exchangeTimeTeaching(@Valid ExchangeTimeTeaching ex, BindingResult result,Model model){
		
		if(result.hasErrors()){
			return "admins/editExchangeTimeTeaching";
		}
				
		exchangeTimeTeachingService.update(ex);
		
		return "redirect:/admin/ExchangeTimeTeaching";		
	}
		
	

	
	/*End exchange time teaching controller*/
	
	
	
	
	
	
	

}
