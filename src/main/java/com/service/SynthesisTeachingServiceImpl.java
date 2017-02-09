package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.SynthesisTeaching;
import com.repository.SynthesisTeachingRepository;
import com.sun.swing.internal.plaf.synth.resources.synth;

@Service("SynthesisTeachingService")
@Transactional
public class SynthesisTeachingServiceImpl implements SynthesisTeachingService {
	@Autowired
	private SynthesisTeachingRepository synthesisTeachingRepository;

	private static final int PAGE_SIZE = 50;

	@Override
	public SynthesisTeaching findById(long id) {
		return synthesisTeachingRepository.findById(id);
	}

	@Override
	public SynthesisTeaching findByLecturer(String name) {
		return synthesisTeachingRepository.findByLecturer(name);
	}

	@Override
	public Page<SynthesisTeaching> getPage(Integer pageNumber) {
		PageRequest request = new PageRequest(pageNumber - 1, PAGE_SIZE);

		return synthesisTeachingRepository.findAll(request);
	}

	@Override
	public List<SynthesisTeaching> findAll() {
		return synthesisTeachingRepository.findAll();
	}

	@Override
	public void deleteById(Long id) {
		synthesisTeachingRepository.delete(id);

	}

	@Override
	public void update(SynthesisTeaching synthesisTeaching) {

		SynthesisTeaching syn = synthesisTeachingRepository.findById(synthesisTeaching.getId());

		if (syn != null) {
			syn.setYear(synthesisTeaching.getYear());
			syn.setTerm(synthesisTeaching.getTerm());
			syn.setClassCredit(synthesisTeaching.getClassCredit());
			syn.setNumberCredits(synthesisTeaching.getNumberCredits());
			syn.setNameCredit(synthesisTeaching.getNameCredit());
			syn.setLecturer(synthesisTeaching.getLecturer());
			syn.setTheoryNumberGroup(synthesisTeaching.getTheoryNumberGroup());
			syn.setTheoryNumberPupilts(synthesisTeaching.getTheoryNumberPupilts());
			syn.setTheoryTimeGroup(synthesisTeaching.getTheoryTimeGroup());
			syn.setTheoryTimeIn(synthesisTeaching.getTheoryTimeIn());
			syn.setTheoryTimeOut(synthesisTeaching.getTheoryTimeOut());
			syn.setTheoryTime7(synthesisTeaching.getTheoryTime7());

			syn.setPracticeNumberGroup(synthesisTeaching.getPracticeNumberGroup());
			syn.setPracticeNumberLecturer(synthesisTeaching.getPracticeNumberLecturer());

			syn.setPracticeNumberPupilts(synthesisTeaching.getPracticeNumberPupilts());
			syn.setPracticeTimeGroup(synthesisTeaching.getPracticeTimeGroup());
			syn.setPracticeTimeIn(synthesisTeaching.getPracticeTimeIn());
			syn.setPracticeTimeOut(synthesisTeaching.getPracticeTimeOut());
			syn.setPracticeTime7(synthesisTeaching.getPracticeTime7());

			syn.setSelftStudy(synthesisTeaching.getSelftStudy());
			syn.setTimeStandard(synthesisTeaching.getTimeStandard());
			syn.setUnit(synthesisTeaching.getUnit());
			syn.setNote(synthesisTeaching.getNote());
		} else {
			// create new .
			synthesisTeachingRepository.save(synthesisTeaching);
		}

	}

	@Override
	public Page<SynthesisTeaching> getPageByString(Integer pageNumber, String search) {
		// TODO Auto-generated method stub
		PageRequest pageable = new PageRequest(pageNumber - 1, PAGE_SIZE);
		
		return synthesisTeachingRepository.findByString(search, pageable);
	}

}
