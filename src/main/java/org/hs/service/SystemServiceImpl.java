package org.hs.service;


import org.hs.mapper.SystemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SystemServiceImpl implements SystemService {
	
	@Autowired
	private SystemMapper mapper;
	@Override
	public int updateLeaveAnnual(String leaveGrantDay,int annualLeaveNum) {
		log.info("휴가 부여 Sevice");
		log.info(leaveGrantDay);
		log.info(annualLeaveNum);
		return mapper.updateAnnualLeave(leaveGrantDay,annualLeaveNum);
		
	}
	
}
