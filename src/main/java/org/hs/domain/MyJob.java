package org.hs.domain;

import org.hs.mapper.SystemMapper;
import org.quartz.CronScheduleBuilder;
import org.quartz.Job;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.Scheduler;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;

public class MyJob implements Job,InitializingBean{
	
	@Autowired
	private Scheduler scheduler;

	@Autowired
	private SystemMapper systemMapper;
	
	@Override
    public void afterPropertiesSet() throws Exception {
        JobDetail jobDetail = JobBuilder.newJob(MyJob.class)
                .withIdentity("myJob")
                .build();
        
        Trigger trigger = TriggerBuilder.newTrigger()
                .withIdentity("myTrigger")
                .withSchedule(CronScheduleBuilder.dailyAtHourAndMinute(10, 30)) // 10시 30분
                .build();

        scheduler.scheduleJob(jobDetail, trigger);
	}
	
	
	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
	
		//systemMapper.updateAnnualLeave(dto);
		System.out.println("잘 작동되어라");

	}

}

