package org.hs.service;

import static org.junit.Assert.*;

import org.hs.domain.LeavePolicyVO;
import org.hs.mapper.LeavePolicyMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class LeavePolicyServiceJunitTest {
 
	@Autowired
	private LeavePolicyService service;
	
//	@Test
//	public void test() {
//		log.info(service);
//	}
	
//	@Test
//	public void testRegisterLeavePolicy() {
//		LeavePolicyVO vo = new LeavePolicyVO();
//		vo.setDocNum(2);
// 		vo.setEmpNum(2);
// 		vo.setTitle("보통연애");
// 		vo.setDetail("박경");
// 		
// 		service.registerLeavePolicy(vo);
//		
//	
//	}
	
//	@Test
//	public void testGetLeavePolicyOne() {
//		LeavePolicyVO vo = service.getLeavePolicyOne(1);
//		log.info(vo);
//	}
	
//	@Test
//	public void testModifiyLeavePolicy() {
//		LeavePolicyVO vo = new LeavePolicyVO();
//		vo.setLpNum(4);
//		vo.setTitle("사건의 지평선");
//		vo.setDetail("윤하");
//		log.info(vo);
//		service.modifyLeavePolicy(vo);
//	}
	
	@Test
	public void testRemoveLeavePolicy() {
		service.removeLeavePolicy(6);
	}
}
