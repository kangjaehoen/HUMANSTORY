package org.hs.service;

import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;


@Service("testQuartzJob")
@Log4j
public class TestQuartzServiceImpl implements TestQuartzService{
	

	@Override
	public void testMethod() {
		log.info("test");
	}
}
