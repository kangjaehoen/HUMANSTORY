package org.hs.domain;

import org.hs.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;

@Component
@AllArgsConstructor
public class TaskTestService {
	
	@Autowired
	private SystemService systemService;
	
	@Autowired
	private AnnualLeaveDTO dto;
	
	@Scheduled(fixedRate = 500000)
	public void TestScheduler() {
		systemService.updateLeaveAnnual(dto);
		System.out.println("자동부여 확인");
		
	}
}
