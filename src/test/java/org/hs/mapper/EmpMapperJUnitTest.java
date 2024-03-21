package org.hs.mapper;

import static org.junit.Assert.*;

import java.util.Calendar;
import java.util.Date;

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
public class EmpMapperJUnitTest {
	@Autowired
	private EmpMapper mapper;
//	
//	@Test
//	public void test() {
//		mapper.getList().forEach(emp-> log.info(emp));
//	}
	
	@Test
	public void testInsertEmpInfo() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.YEAR, 2024);
		calendar.set(Calendar.MONTH, Calendar.MARCH);
		calendar.set(Calendar.DAY_OF_MONTH, 25);
		Date hireDate = calendar.getTime();
		
	    EmployeeVO emp = new EmployeeVO();
	    emp.setEmpName("ddd");
	    emp.setJob("ĸƾ");
	    emp.setPw("son7Hoor");
	    emp.setPhoneNum(7777777);
	    emp.setHireDate(hireDate);
	    emp.setAnnualLeaveNum(4);
	    emp.setBirthDate(930712);
	    emp.setAdminNum(7);
	    emp.setAuthNum(7);
	    emp.setDeptNum(7);
	    emp.setWorkDate(790);
	    
	    mapper.insertEmpInfo(emp);
	}
	
//	@Test
//	public void testRead() {
//		EmployeeVO emp=mapper.read(1);
//		log.info(emp);
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("Delete count: "+mapper.delete(3));
//	}
//	
//	@Test
//	public void testUpdate() {
//		EmployeeVO emp = new EmployeeVO(); 
//		emp.setEmpNum(2);
//		emp.setEmpName("jongwon");
//	    emp.setJob("�븮");
//	    emp.setPw("iwantverywell");
//	    emp.setPhoneNum(12345678);
//	    emp.setAnnualLeaveNum(4);
//	    emp.setBirthDate(970712);
//	    emp.setAdminNum(7);
//	    emp.setAuthNum(7);
//	    emp.setDeptNum(7);
//	    emp.setWorkDate(790);
//		int count = mapper.update(emp);
//		log.info("update count:"+count);
//		
//	}
//	
	
}