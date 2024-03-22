package org.hs.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.hs.domain.EmployeeVO;
import org.hs.domain.LeavePolicyVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.hs.domain.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class LeavePolicyMapperJunitTest {
	@Autowired
	private LeavePolicyMapper mapper;

//	@Test
//	public void test() {
//		log.info(mapper);
//	}

// 	@Test
// 	public void testInsert() {
// 		LeavePolicyVO vo = new LeavePolicyVO();
// 		vo.setDocNum(5);
// 		vo.setEmpNum(1);
// 		vo.setTitle("쏘쏘");
// 		vo.setDetail("백아연");
// 		
// 		mapper.insert(vo);
// 		
// 	}
	
//	@Test
//	public void testList() {
//		List<LeavePolicyVO> vo = mapper.getList();
//		for(int i = 0;i<vo.size();i++) {
//			LeavePolicyVO leave = vo.get(i);
//			log.info(leave);
//		}
//	
//	}
	
//	@Test
//	public void testDetail() {
//		LeavePolicyVO vo = mapper.getDetail(1);
//		log.info(vo);
//	}
	
//	@Test
//	public void testUPdate() {
//		LeavePolicyVO vo = new LeavePolicyVO();
//		vo.setLpNum(4);
//		vo.setTitle("고백");
//		vo.setDetail("멜로망스");
//		mapper.update(vo);
//		 
//	}
	
//	@Test 
//	public void testDelete() {
//		int vo =mapper.delete(4);
//		log.info(vo);
//	}


}
