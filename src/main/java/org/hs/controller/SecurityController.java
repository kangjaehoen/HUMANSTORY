package org.hs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/secu/*")
@Controller
public class SecurityController {

	@GetMapping("/all")
	public void doAll() {
		log.info("do all can access everybody");
	}

	@GetMapping("/manager")
	public void doManager() {
		log.info("logined manager");
	}

	@GetMapping("/admin")
	public void doAdmin() {
		log.info("admin only");
	}
}
