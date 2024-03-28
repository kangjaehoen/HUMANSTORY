package org.hs.mapper;

import static org.junit.Assert.*;

import java.util.Date;

import org.hs.domain.AnnualLeaveDTO;
import org.hs.domain.EmployeeVO;
import org.hs.domain.LeaveRecordsVO;
import org.hs.domain.LeaveVO;
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
//	    emp.setEmpName("침착ㅇㅇ맨123");
//	    emp.setJob("지금 내손을 잡아123");
//	    emp.setPw("사건의 지평선123");
//	    emp.setPhoneNum(72127);
//	    emp.setAnnualLeaveNum(1);
//	    emp.setBirthDate(93075);
//	    emp.setAdminNum(18);
//	    emp.setAuthNum(18);
//	    emp.setDeptNum(18);
//	    emp.setWorkDate(200);

//	    mapper.insertEmpInfo(emp);
//	}
//	
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

//	@Test
//	public void testUpdateAnnualLeave() {
//		AnnualLeaveDTO dto = new AnnualLeaveDTO();
//		dto.setAnnualNum(16);
//		dto.setLeaveDay("0326");
//		log.info(dto);
//		mapper.updateAnnualLeave(dto);
//	}
	
//	@Test
//	public void testLeaveGrant() {
//		AnnualLeaveDTO dto = new AnnualLeaveDTO();
//		dto.setLeaveDay("2024-03-27");
//				mapper.leaveGrantDay(dto);
//		
//	}
//	@Test
//	public void testLeaveGrnatDayApply() {
//		mapper.leaveGrantDayApply();
//		
//	}
	@Test
	public void testleaveGrantDayApply() {
		LeaveVO leave =mapper.leaveGrantDayApply();
		log.info(leave);
	}
	

}
