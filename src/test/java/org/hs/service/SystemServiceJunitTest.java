package org.hs.service;

import static org.junit.Assert.*;

import org.hs.domain.AnnualLeaveDTO;
import org.hs.domain.EmployeeVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class SystemServiceJunitTest {

	@Autowired
	private SystemService service;
	
	@Test
	public void testUPdateLeaveAnnual() {
		AnnualLeaveDTO dto = new AnnualLeaveDTO();
		dto.setAnnualNum(15);
		dto.setLeaveDay("0322");
		log.info("service : "+dto);
		service.updateLeaveAnnual(dto);
	}

}
