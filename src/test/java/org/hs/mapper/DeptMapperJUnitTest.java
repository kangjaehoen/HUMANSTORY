package org.hs.mapper;

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
public class DeptMapperJUnitTest {
	
	@Autowired
	private DeptMapper mapper;
	
	@Test
	public void testUpdate() {
		DeptVO dept = new DeptVO(); 
		dept.setDeptNum(2);
		dept.setDeptName("기획하는 부서");
	    
		int count = mapper.update(dept);
		log.info("update count:"+count);
		
	}

}
