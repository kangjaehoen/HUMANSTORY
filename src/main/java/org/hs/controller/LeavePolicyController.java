package org.hs.controller;

import java.util.List;

import org.hs.domain.Criteria;
import org.hs.domain.LeavePolicyAttachVO;
import org.hs.domain.LeavePolicyVO;
import org.hs.domain.PageDTO;
import org.hs.service.LeavePolicyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/leavePolicy/*")
@Log4j
public class LeavePolicyController {

	@Autowired
	private LeavePolicyService service;

	@GetMapping("register")
	public void registerForm() {
		log.info("registerForm 으로 이동");
	}

	@PostMapping("register")
	public String registerLeavePolicy(LeavePolicyVO vo) {
		log.info("휴가정책 등록 컨트롤러");
		log.info(vo);
		
		if (vo.getAttachList() != null) {
			vo.getAttachList().forEach(attach -> log.info(attach));
		}
		
		service.registerLeavePolicy(vo);
		return "redirect:/leavePolicy/list";
	}

	@GetMapping("list")
	public void getLeavePolicyCharts(Model model, Criteria cri) {
		log.info("휴가정책 게시판 리스트 컨트롤러");
		int total = service.listTotal(cri);
		model.addAttribute("list", service.getLeavePolicyCharts(cri));
		model.addAttribute("page", new PageDTO(cri, service.listTotal(cri)));

	}

	@GetMapping({ "get", "update" })
	public void getLeavePolicyOne(@RequestParam("lpNum") int lpNum, Model model) {
		log.info("휴가 정책 세부 조회");
		log.info(lpNum);
		model.addAttribute("get", service.getLeavePolicyOne(lpNum));

	}

	@PostMapping("update")
	public String modifyLeavePolicy(LeavePolicyVO vo) {
		log.info("휴가 정책 수정");
		log.info(vo);
		service.modifyLeavePolicy(vo);
		return "redirect:/leavePolicy/list";
	}

	@PostMapping("delete")
	public String removeLeavePolicy(@RequestParam("lpNum") int lpNum) {
		service.removeLeavePolicy(lpNum);
		return "redirect:/leavePolicy/list";

	}

	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<LeavePolicyAttachVO>> getAttachList(int lpNum) {
		log.info("getAttachList " + lpNum);
		return new ResponseEntity<>(service.getAttachList(lpNum), HttpStatus.OK);
	}
}
