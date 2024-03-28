package org.hs.domain;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.extern.log4j.Log4j;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class AnnualLeaveDTO {
	private String leaveDay;
	private int annualNum;


}
