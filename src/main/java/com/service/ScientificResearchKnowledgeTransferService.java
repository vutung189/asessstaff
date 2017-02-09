package com.service;

import java.util.List;

import com.model.ScientificResearchKnowledgeTransfer;

public interface ScientificResearchKnowledgeTransferService {

	List<ScientificResearchKnowledgeTransfer> findAll();

	ScientificResearchKnowledgeTransfer findById(Long id);
	
	public void update(ScientificResearchKnowledgeTransfer scientificResearchKnowledgeTransfer);

	void save(ScientificResearchKnowledgeTransfer scientificResearchKnowledgeTransfer);

	void delete(Long id);
}
