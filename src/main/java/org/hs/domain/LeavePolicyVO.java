package org.hs.domain;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.ToString;

@Data
public class LeavePolicyVO {
	private int lpNum;
	private int empNum;
	private String title;
	private String detail;
	private Date registerDate;

	
	private List<AttachVO> attachList;
	
	
}
