package org.hs.controller;

import org.hs.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/system/*")
@Log4j
public class SystemController {
	
	@Autowired
	private SystemService service;
	
	@PostMapping("/annualLeave")
	public void annualLeave() {
		
	}
	
}
