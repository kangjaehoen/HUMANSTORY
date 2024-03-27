package org.hs.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class LeavPolicyAttachJUnitTest {
	@Autowired
	private WebApplicationContext ctx; // spring cotainer 객체
	private MockMvc mockMvc; // tomcat(controller는 tomcat이 필요함,test는 tomcat 사용을 못하니 가상의 tomcat(was))

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();// mock 객체 생성

	}
	
	 @Test
	    public void testRegister() throws Exception {
	        // 가짜 파일 생성
	        MockMultipartFile mockFile = new MockMultipartFile("uploadFile", "test.jpg", "image/jpeg", "test data".getBytes());

	        mockMvc.perform(MockMvcRequestBuilders.multipart("/leavePolicy/register")
	                .file(mockFile)
	                .param("docNum", "2")
	                .param("empNum", "2")
	                .param("title", "보통연애")
	                .param("detail", "박경"))
	                .andExpect(status().is3xxRedirection()) // 적절한 응답 상태 확인
	                .andExpect(redirectedUrl("/leavePolicy/list")); // 리다이렉트 확인
	    }
	}


