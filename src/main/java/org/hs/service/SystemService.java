package org.hs.service;

import org.hs.domain.AnnualLeaveDTO;
import org.hs.domain.LeaveVO;



public interface SystemService {
	public int updateLeaveAnnual(AnnualLeaveDTO dto);
	public int leaveGrnathDay(AnnualLeaveDTO dto);	
	public int annulLeaveSet(AnnualLeaveDTO dto);
	
}
