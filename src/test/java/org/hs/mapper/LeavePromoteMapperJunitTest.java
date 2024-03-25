package org.hs.mapper;

import java.util.List;

import org.hs.domain.LeavePromoteVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class LeavePromoteMapperJunitTest {
	@Autowired
	private LeavePromoteMapper mapper;
	
//	@Test
//	public void test() {
//		log.info(mapper);
//	}
// 	@Test
// 	public void testInsert() {
// 		LeavePromoteVO vo = new  	LeavePromoteVO();
// 		vo.setEmpNum(1);
// 		vo.setTitle("쏘쏘");
// 		vo.setDetail("백아연");
// 		
// 		mapper.insert(vo);
// 		
// 	}
//	
//	@Test
//	public void testList() {
//		List<LeavePromoteVO> vo = mapper.getList(10,10);
//		for(int i = 0;i<vo.size();i++) {
//			LeavePromoteVO leave = vo.get(i);
//			log.info(leave);
//		}
//	
//	}
//	@Test
//	public void testDetail() {
//		LeavePromoteVO vo = mapper.getDetail(1);
//		log.info(vo);
//	}
	
//	@Test
//	public void testUPdate() {
//		LeavePromoteVO vo = new LeavePromoteVO();
//		vo.setLprNum(1);
//		vo.setTitle("고백");
//		vo.setDetail("멜로망스");
//		mapper.update(vo);
//		 
//	}
	
//	@Test 
//	public void testDelete() {
//		int vo =mapper.delete(1);
//		log.info(vo);
//	}
//	

}
