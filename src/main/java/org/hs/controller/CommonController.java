package org.hs.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("access Denied:" + auth);
		model.addAttribute("msg", "Access Denied");
	}
	@GetMapping("/customLogin")
	public void loginInput(String error,String logout, Model model) {
		log.info(error);
		log.info(logout);
		if(error !=null) {
			model.addAttribute("error","Login Error Check Your Account");
		}
		
		if(logout !=null) {
			model.addAttribute("logout","LogOut!!");
		}
	}
	@GetMapping("/customLogout")
	public void logoutGET() {
		log.info("custom logout");
	}
}
