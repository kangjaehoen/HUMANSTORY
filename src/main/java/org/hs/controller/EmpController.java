package org.hs.controller;

import org.hs.domain.DeptPageDTO;
import org.hs.domain.EmpCriteria;
import org.hs.domain.EmpPageDTO;
import org.hs.domain.EmployeeVO;
import org.hs.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/emp/*")
@Log4j
public class EmpController {
	@Autowired
	private EmpService service;
	
	@GetMapping("/list")
	public void list(EmpCriteria cri,Model model) {
		log.info("list");
		model.addAttribute("list",service.getList(cri));
		model.addAttribute("pageMaker",new EmpPageDTO(cri, service.getTotal(cri)));
	}
	@GetMapping("/register")
	public void register() {
		
	}
	@PostMapping("/register")
		public String register(EmployeeVO emp, RedirectAttributes rttr) {
			log.info("register:"+emp);
			service.register(emp);
			rttr.addFlashAttribute("result",emp.getEmpNum());
			return "redirect:/emp/list";
		}
	
	@GetMapping({"/get" ,"/modify"})
		public void get(@RequestParam("empNum") int empNum,@ModelAttribute("cri")EmpCriteria cri, Model model) {
		
		log.info("/get or modify");
		model.addAttribute("emp",service.get(empNum));
	}
	
	@PostMapping("/modify")
	public String modify(EmployeeVO emp,@ModelAttribute("cri")EmpCriteria cri, RedirectAttributes rttr) {
		log.info("modify:"+emp);
		
		if(service.modify(emp)) {
			rttr.addFlashAttribute("result","success");
		}
		
		rttr.addAttribute("emppageNum",cri.getEmppageNum());
		rttr.addAttribute("empamount",cri.getEmpamount());
		
		return "redirect:/emp/list";
	}
	@PostMapping("/remove")
	public String remove(@RequestParam("empNum") int empNum,EmpCriteria cri, RedirectAttributes rttr) {
		if(service.remove(empNum)) {
			rttr.addFlashAttribute("result","success");
		}
		rttr.addAttribute("result",cri.getEmppageNum());
		rttr.addAttribute("empamount",cri.getEmpamount());
		
		return "redirect:/emp/list";
		
	}
	
}
