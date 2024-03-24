package org.hs.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class LeavePolicyVO {
	private int lpNum;
	private int docNum;
	private int empNum;
	private String title;
	private String detail;
	private Date registerDate;
	private List<LeavePolicyAttachVO> attachList;
}
