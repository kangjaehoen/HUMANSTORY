package org.hs.controller;

import java.util.List;

import org.hs.domain.Criteria;
import org.hs.domain.LeavePromoteVO;
import org.hs.domain.PageDTO;
import org.hs.domain.PromoteAttachVO;
import org.hs.service.LeavePromoteService;
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
@RequestMapping("/leavePromote/*")
@Log4j
public class LeavePromoteController {
	@Autowired
	private LeavePromoteService service;

	@GetMapping("register")
	public void registerForm() {
		log.info("registerForm 으로 이동");
	}

	@PostMapping("register")
	public String registerLeavePromote(LeavePromoteVO vo) {
		log.info("휴가정책 등록 컨트롤러");
		log.info(vo);

		if (vo.getAttachList() != null) {
			vo.getAttachList().forEach(attach -> log.info(attach));
			log.info("AttachList 확인1 :" + vo.getAttachList());
		}
		log.info("AttachList 확인2 :" + vo.getAttachList());

		service.registerLeavePromote(vo);
		return "redirect:/leavePromote/list";
	}

	@GetMapping("list")
	public void getLeavePromoteCharts(Model model, Criteria cri) {
		log.info("휴가정책 게시판 리스트 컨트롤러");
		int total = service.listTotal(cri);
		model.addAttribute("list", service.getLeavePromoteCharts(cri));
		model.addAttribute("page", new PageDTO(cri, service.listTotal(cri)));
	}

	@GetMapping({ "get", "update" })
	public void getLeavePromoteOne(@RequestParam("lprNum") int lprNum, Model model) {
		log.info("휴가 정책 세부 조회");
		log.info(lprNum);
		model.addAttribute("get", service.getLeavePromoteOne(lprNum));

	}

	@PostMapping("update")
	public String modifyLeavePromote(LeavePromoteVO vo) {
		log.info("휴가 정책 수정");
		log.info(vo);
		service.modifyLeavePromote(vo);
		return "redirect:/leavePromote/list";
	}

	@PostMapping("delete")
	public String removeLeavePromote(@RequestParam("lprNum") int lprNum) {
		service.removeLeavePromote(lprNum);
		return "redirect:/leavePromote/list";

	}

	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<PromoteAttachVO>> getAttachList(int lprNum) {
		log.info("getAttachList " + lprNum);
		return new ResponseEntity<>(service.getAttachList(lprNum), HttpStatus.OK);
	}

}
