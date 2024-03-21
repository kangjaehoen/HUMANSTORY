package org.hs.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class EmpControllerTests {
	@Autowired
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}

//	@Test
//	public void testList() throws Exception{
//		log.info(
//				mockMvc.perform(MockMvcRequestBuilders.get("/emp/list"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap()
//				);
//		
//	}
//	@Test
//	public void testGet()throws Exception{
//		log.info(mockMvc.perform(MockMvcRequestBuilders
//				.get("/emp/get")
//				.param("empNum","2"))
//				.andReturn()
//				.getModelAndView().getModelMap());
//	}
//	@Test
//	public void testModify()throws Exception {
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/emp/modify")
//			.param("empNum", "2")
//			.param("empName", "jwt")
//			.param("pw", "fjfj")
//			.param("job","´ë¸®")
//			.param("phoneNum","15464512")
//			.param("annualLeaveNum","24")
//			.param("workDate","1213")
//			.param("birthDate","970112")
//			.param("adminNum","7")
//			.param("authNum","7")
//			.param("deptNum","7")
//			)
//			.andReturn().getModelAndView().getViewName();
//		log.info(resultPage);
//	}
//	@Test
//	public void testRemove()throws Exception {
//		log.info(mockMvc.perform(MockMvcRequestBuilders.post("/emp/remove")
//				.param("empNum", "5"))
//				.andReturn().getModelAndView().getViewName());
//	}
}
