package org.hs.domain;

import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.impl.StdSchedulerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
	public class QuartzConfig {

		  @Bean
		    public Scheduler scheduler() throws SchedulerException {
			  Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();
		        scheduler.start(); // 스케줄러 시작
		        return scheduler;
		    }
	}

