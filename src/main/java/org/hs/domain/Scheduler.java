package org.hs.domain;

import org.hs.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class Scheduler {
	@Autowired
	private SystemService systemService;
	
	@Autowired
	private AnnualLeaveDTO dto;
	
	@Scheduled(fixedRate = 5000)	
	public void autoFunction() {
		systemService.updateLeaveAnnual(dto);
		System.out.println("제발 되어라");
		
	}
	
}
