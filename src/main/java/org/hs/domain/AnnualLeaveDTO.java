package org.hs.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.ToString;
import lombok.extern.log4j.Log4j;

@Data
@ToString
@AllArgsConstructor
public class AnnualLeaveDTO {
	private String leaveGrantDay;
    private int annualLeaveNum;
}
