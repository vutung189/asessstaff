package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.model.ExchangeTimeTeaching;


public interface ExchangeTimeTeachingRepository  extends JpaRepository<ExchangeTimeTeaching, Long >{
	
	List<ExchangeTimeTeaching> findByYear(long id);
	
	ExchangeTimeTeaching findById(long id);

}
