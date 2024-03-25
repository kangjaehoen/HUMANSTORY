package org.hs.mapper;

import static org.junit.Assert.*;

import org.hs.domain.LeavePolicyAttachVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class LeavePolicyAttachJunitTest {
@Autowired
 private LeavePolicyAttachMapper mapper;
	
//	@Test
//	public void test() {
//		log.info(mapper);
//	}

//	@Test
//	public void insertFileTest() {
//		LeavePolicyAttachVO attachVO = new LeavePolicyAttachVO();
//		attachVO.setUuid("1234511-90ab-cdef-1234-567890abcdef");
//		attachVO.setUploadPath("C:\\Users\\KOSTA\\Desktop");
//		attachVO.setFileName("IU.jpg");
//		attachVO.setFileType(true);
//		attachVO.setLpNum(13);
//		
//		mapper.insert(attachVO);
//	}


		@Test
		public void deleteTest() {
			log.info("파일 삭제");
			mapper.delete("d3b86b1d-fa1d-4c27-bc09-7c446263b5ac");
		}
	}


