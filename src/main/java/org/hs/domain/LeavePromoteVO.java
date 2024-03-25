package org.hs.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class LeavePromoteVO {
	private int lprNum;
	private int empNum;
	private String title;
	private String detail;
	private Date registerDate;
	private Date updateDate;
	
	private List<PromoteAttachVO> attachList;
}
