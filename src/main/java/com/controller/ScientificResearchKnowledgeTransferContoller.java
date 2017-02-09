package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.ScientificResearchKnowledgeTransfer;
import com.service.ScientificResearchKnowledgeTransferService;

@Controller
public class ScientificResearchKnowledgeTransferContoller {

	@Autowired
	private ScientificResearchKnowledgeTransferService srkt;
	
	
	
	@RequestMapping(value = "admin/ScientificResearchKnowledgeTransfer",method =RequestMethod.GET)
	public String ScientificResearchKnowledgeTransfer(Model model){
		
		List<ScientificResearchKnowledgeTransfer> scientificResearchKnowledgeTransfers = srkt.findAll();

		model.addAttribute("scientificResearchKnowledgeTransfer",scientificResearchKnowledgeTransfers );
		
		return "admins/scientificResearchKnowledgeTransfer";
		
	}
	
	
	@RequestMapping(value = "admin/ScientificResearchKnowledgeTransfer/delete",method =RequestMethod.POST)
	public String ScientificResearchKnowledgeTransfer(@RequestParam(value="id") Long id){
		
		System.out.print("test delete : "+id);
		
		
		srkt.delete(id);

		return "redirect:/admin/ScientificResearchKnowledgeTransfer";		

	}
	
	
			
	
}
