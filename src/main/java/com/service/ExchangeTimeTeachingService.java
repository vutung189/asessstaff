package com.service;

import java.util.List;

import com.model.ExchangeTimeTeaching;


public interface ExchangeTimeTeachingService {
	
	List<ExchangeTimeTeaching> findAll();
	
	List<ExchangeTimeTeaching> findByYear(long id);
	
	ExchangeTimeTeaching findById(long id);
	
	void update(ExchangeTimeTeaching exchangeTimeTeaching);
	

}
