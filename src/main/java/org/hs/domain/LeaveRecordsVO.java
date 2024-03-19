package org.hs.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class LeaveRecordsVO {
	private int empNum;
    private int leaveNum;
    private String reason;
}
