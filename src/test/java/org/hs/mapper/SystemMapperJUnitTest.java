package org.hs.mapper;

import static org.junit.Assert.*;

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
public class SystemMapperJUnitTest {
	@Autowired
	private SystemMapper mapper;
	
	@Test
	public void test() {
		log.info(mapper);
	}	
//	@Test
//	public void insertEmpTest() {
//		EmployeeVO emp = new EmployeeVO();
//		emp.setEmpName("아이유");
//		emp.setJob("대리");
//		emp.setPhoneNum(82991244);
//		emp.setAnnualLeaveNum(15);
//		emp.setBirthDate(981103);
//		emp.setEmpNum(10);
//		emp.setAuthNum(10);
//		emp.setDeptNum(10);
//		emp.setPw("우유빛깔 아이유");
//		mapper.insert(emp);
//	}
	
	
	
}
