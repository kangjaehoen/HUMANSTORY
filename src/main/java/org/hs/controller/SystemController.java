package org.hs.controller;


import org.hs.domain.AnnualLeaveDTO;
import org.hs.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/system/*")
@Log4j
public class SystemController {

	@Autowired
	private SystemService service;

	@GetMapping("/annualForm")
	public void annualForm(Model model) {
		log.info("annualForm 이동");
	}

	@PostMapping("/annualLeave")
	public String annualList(@ModelAttribute AnnualLeaveDTO dto) {
		log.info("휴가 자동 부여");
		log.info("contorllter: " + dto);
		service.updateLeaveAnnual(dto);
		return "redirect:/system/annualForm";
	}   
	
	@PostMapping("/leaveGrant")
		public String leaveGrant(@ModelAttribute AnnualLeaveDTO dto) {
		log.info("휴가날 선정");
		log.info(dto);
		log.info(dto.getLeaveDay());
		service.leaveGrnathDay(dto);
		return "redirect:/system/annualForm";
				
		}
	@PostMapping("/annualNumSetting")
		public String annualNumSetting(@ModelAttribute AnnualLeaveDTO dto) {
		log.info("휴가일수 선정");
		service.annulLeaveSet(dto);
		return "redirect:/system/annualForm";
	}
	
}
