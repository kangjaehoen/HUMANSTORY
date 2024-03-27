package org.hs.service;


import org.hs.domain.AnnualLeaveDTO;
import org.hs.mapper.SystemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SystemServiceImpl implements SystemService {
	
	@Autowired
	private SystemMapper mapper;
	
//	@Override
//	public int updateLeaveAnnual(String leaveGrantDay,int annualLeaveNum) {
//		log.info("휴가 부여 Sevice");
//		log.info(leaveGrantDay);
//		log.info(annualLeaveNum);
//		return mapper.updateAnnualLeave(leaveGrantDay,annualLeaveNum);
//		
	
	@Override
	public int updateLeaveAnnual(AnnualLeaveDTO dto) {
		System.out.println("service : "+dto);
		
		String leaveDay = mapper.leaveGrantDayApply();
		dto.setLeaveDay(leaveDay);
		return mapper.updateAnnualLeave(dto);
	}

	@Override
	public int leaveGrnathDay(AnnualLeaveDTO dto) {
		System.out.println("service : "+dto.getLeaveDay());
		return mapper.leaveGrantDay(dto);
	}
}
