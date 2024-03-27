package org.hs.service;

import org.hs.domain.AnnualLeaveDTO;



public interface SystemService {
	public int updateLeaveAnnual(AnnualLeaveDTO dto);
	public int leaveGrnathDay(AnnualLeaveDTO dto);		
}
