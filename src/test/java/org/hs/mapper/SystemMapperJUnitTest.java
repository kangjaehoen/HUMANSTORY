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
	
//	@Test
//	public void testInsertEmpInfo() {
//	    EmployeeVO emp = new EmployeeVO();
//	    emp.setEmpName("침착ㅇㅇ맨");
//	    emp.setJob("할아버지의 화는");
//	    emp.setPw("5단계로 나눈다.");
//	    emp.setPhoneNum(7777777);
//	    emp.setAnnualLeaveNum(1);
//	    emp.setBirthDate(930712);
//	    emp.setAdminNum(15);
//	    emp.setAuthNum(15);
//	    emp.setDeptNum(15);
//	    emp.setWorkDate(500);
//
//	    mapper.insertEmpInfo(emp);
//	}
	
//	@Test
//	public void GrantannualLeaveNum() {
//		EmployeeVO emp = new EmployeeVO();
//		emp.setEmpNum(5);
//		mapper.grantAnnualLeave(emp);
//	}
	
//	  @Test
//	    public void testGetEmployeesToUpdate() {
//	        // When
//	         List<EmployeeVO> emp =mapper.getEmployeesToUpdate();
//	         log.info(emp);    
//	    }
	

	    @Test
	    public void testUpdateAnnualLeave() {
	        mapper.updateAnnualLeave();
	    }
	
	
}
