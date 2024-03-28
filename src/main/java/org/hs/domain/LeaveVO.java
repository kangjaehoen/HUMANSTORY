package org.hs.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class LeaveVO {
	private int leaveNum;
	private String leaveType;
	private String leaveReason;
	private Date proposalDate;
	private Date startDate;
	private Date endDate;
	private String leaveGrantDay;
	private int leaveNumSet;
}
