package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.model.ScientificResearchKnowledgeTransfer;

public interface ScientificResearchKnowledgeTransferRepositoty extends JpaRepository<ScientificResearchKnowledgeTransfer, Long> {
	
	ScientificResearchKnowledgeTransfer findById(long id);

}
