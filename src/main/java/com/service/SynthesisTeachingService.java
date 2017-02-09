package com.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.model.SynthesisTeaching;

public interface SynthesisTeachingService {

	
	SynthesisTeaching findById(long id);
	
	SynthesisTeaching findByLecturer(String name);

	public Page<SynthesisTeaching> getPage(Integer pageNumber);
	
	public List<SynthesisTeaching> findAll();

	void deleteById(Long id);
	
	void update(SynthesisTeaching synthesisTeaching);
	
	public Page<SynthesisTeaching> getPageByString(Integer pageNumber,String string);

	
}
