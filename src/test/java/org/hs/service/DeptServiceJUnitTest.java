package org.hs.service;

import static org.junit.Assert.*;

import org.hs.domain.DeptVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class DeptServiceJUnitTest {
	
	@Autowired
	private DeptService service;
	
	@Test
	public void testModify() {
		DeptVO dept = service.get(2);
		
		if(dept ==null) {
			return;
		}
		dept.setDeptName("±‚»π∫Œ");
	    
	    
	    log.info("modify result"+service.modify(dept));
	}

}
