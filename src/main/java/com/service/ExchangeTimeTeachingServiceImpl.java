package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.ExchangeTimeTeaching;
import com.repository.ExchangeTimeTeachingRepository;

@Service("ExchangeTimeTeachingService")
@Transactional
public class ExchangeTimeTeachingServiceImpl implements ExchangeTimeTeachingService {

	@Autowired
	private ExchangeTimeTeachingRepository exchangeTimeTeachingRepository;
	
	
	@Override
	public List<ExchangeTimeTeaching> findByYear(long id) {
		
		
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(ExchangeTimeTeaching exchangeTimeTeaching) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ExchangeTimeTeaching> findAll() {
		return exchangeTimeTeachingRepository.findAll();
	}

	@Override
	public ExchangeTimeTeaching findById(long id) {
		// TODO Auto-generated method stub
		return exchangeTimeTeachingRepository.findById(id);
	}

}
