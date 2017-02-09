package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.ScientificResearchKnowledgeTransfer;
import com.repository.ScientificResearchKnowledgeTransferRepositoty;

@Service("ScientificResearchKnowledgeTransferService")
@Transactional
public class ScientificResearchKnowledgeTransferServiceImpl implements ScientificResearchKnowledgeTransferService {

	@Autowired
	private ScientificResearchKnowledgeTransferRepositoty srkt;

	@Override
	public List<ScientificResearchKnowledgeTransfer> findAll() {
		return srkt.findAll();
	}

	@Override
	public ScientificResearchKnowledgeTransfer findById(Long id) {
		return srkt.findById(id);
	}

	@Override
	public void update(ScientificResearchKnowledgeTransfer scientificResearchKnowledgeTransfer) {
		// TODO Auto-generated method stub

	}

	@Override
	public void save(ScientificResearchKnowledgeTransfer scientificResearchKnowledgeTransfer) {
		srkt.save(scientificResearchKnowledgeTransfer);
	}

	@Override
	public void delete(Long id) {
		srkt.delete(id);
	}

}
