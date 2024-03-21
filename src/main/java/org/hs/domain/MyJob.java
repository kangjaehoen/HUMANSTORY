package org.hs.domain;

import org.hs.mapper.SystemMapper;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;

public class MyJob implements Job{
	
	@Autowired
	private SystemMapper systemMapper;

	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		systemMapper.updateAnnualLeave();
		System.out.println("잘 작동되어라");
		
	}

}
