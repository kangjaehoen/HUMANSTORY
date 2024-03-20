package org.hs.service;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

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
public class EmpServiceJUnitTest {

	@Autowired
	private EmpService service;
//	
//	@Test
//	public void testRegister() {
//		EmployeeVO emp=new EmployeeVO();
//		emp.setEmpName("ddd");
//	    emp.setJob("캡틴");
//	    emp.setPw("son7Hoor");
//	    emp.setPhoneNum(7777777);
//	    emp.setAnnualLeaveNum(4);
//	    emp.setBirthDate(930712);
//	    emp.setAdminNum(7);
//	    emp.setAuthNum(7);
//	    emp.setDeptNum(7);
//	    emp.setWorkDate(790);
//	    
//	    service.register(emp);
//	    log.info(emp.getEmpNum());
//	}
//	
//	@Test
//	public void testModify() {
//		EmployeeVO emp = service.get(2);
//		
//		if(emp ==null) {
//			return;
//		}
//		emp.setEmpName("재성");
//	    emp.setJob("주임");
//	    emp.setPw("2748");
//	    emp.setPhoneNum(772377);
//	    emp.setAnnualLeaveNum(1);
//	    emp.setBirthDate(990112);
//	    emp.setAdminNum(7);
//	    emp.setAuthNum(7);
//	    emp.setDeptNum(7);
//	    emp.setWorkDate(460);
//	    
//	    log.info("modify result"+service.modify(emp));
//	}
//	
	@Test
	public void testDelete() {
		log.info("result result:"+service.remove(4));
	}
	
	
//	
//	@Test
//	public void testGet() {
//		log.info(service.get(1));
//	}
//	
//	@Test
//	public void testGetList() {
//		service.getList().forEach(emp-> log.info(emp));
//	}
//	
}
