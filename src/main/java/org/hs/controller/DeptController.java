package org.hs.controller;

import org.hs.domain.DeptVO;
import org.hs.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/dept/*")
@Log4j
public class DeptController {
	@Autowired
	private DeptService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list",service.getList());
	}
	@GetMapping("/register")
	public void register() {
		
	}
	@PostMapping("/register")
		public String register(DeptVO dept, RedirectAttributes rttr) {
			log.info("register:"+dept);
			service.register(dept);
			rttr.addFlashAttribute("result",dept.getDeptNum());
			return "redirect:/dept/list";
		}
	
	@GetMapping({"/get" ,"/modify"})
		public void get(@RequestParam("deptNum") int deptNum, Model model) {
		
		log.info("/get or modify");
		model.addAttribute("dept",service.get(deptNum));
	}
	
	@PostMapping("/modify")
	public String modify(DeptVO dept,RedirectAttributes rttr) {
		log.info("modify:"+dept);
		
		if(service.modify(dept)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/dept/list";
	}
	@PostMapping("/remove")
	public String remove(@RequestParam("deptNum") int deptNum,RedirectAttributes rttr) {
		if(service.remove(deptNum)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/dept/list";
		
	}
}
