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
//	
//	@Test
//	public void testInsertEmpInfo() {
//	    EmployeeVO emp = new EmployeeVO();
//	    emp.setEmpName("ddd");
//	    emp.setJob("캡틴");
//	    emp.setPw("son7Hoor");
//	    emp.setPhoneNum(7777777);
//	    emp.setAnnualLeaveNum(4);
//	    emp.setBirthDate(930712);
//	    emp.setAdminId(7);
//	    emp.setAuthNum(7);
//	    emp.setDeptNum(7);
//	    emp.setWorkDate(790);
//
//	    mapper.insertEmpInfo(emp);
//	}
	
	@Test
	public void GrantannualLeaveNum() {
		EmployeeVO emp = new EmployeeVO();
		emp.setEmpNum(13);
		mapper.grantAnnualLeave(emp);
	}
	
}
