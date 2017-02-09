package com.repository;


import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.SynthesisTeaching;

@Repository
public interface SynthesisTeachingRepository extends JpaRepository<SynthesisTeaching, Long > {
	
	SynthesisTeaching findById(long id);
	
	List<SynthesisTeaching> findAll();
	
	SynthesisTeaching findByLecturer(String name);
	
	
/*	 "SELECT t FROM Todo t WHERE " +
     "LOWER(t.title) LIKE LOWER(CONCAT('%', :searchTerm, '%')) OR " +
     "LOWER(t.description) LIKE LOWER(CONCAT('%', :searchTerm, '%'))"
	
	*/
	
    @Query("SELECT s FROM SynthesisTeaching s where s.lecturer LIKE CONCAT('%',:search,'%')"
    		+"OR s.nameCredit  LIKE CONCAT('%',:search,'%')"
    		+"OR s.numberPupils  LIKE CONCAT('%',:search,'%')"
    		+"OR s.year  LIKE CONCAT('%',:search,'%')"
    		+"OR s.timeStandard  LIKE CONCAT('%',:search,'%')")
	Page<SynthesisTeaching> findByString(@Param("search") String search,Pageable pageable);
	
}
