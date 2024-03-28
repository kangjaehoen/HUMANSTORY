package org.hs.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.hs.domain.AnnualLeaveDTO;
import org.hs.domain.EmployeeVO;
import org.hs.domain.LeaveRecordsVO;
import org.hs.domain.LeaveVO;

public interface SystemMapper {
	public int insertEmpInfo(EmployeeVO emp);

	public List<EmployeeVO> getEmployeesToUpdate();

	public int updateAnnualLeave(AnnualLeaveDTO dto);

	public int leaveGrantDay(AnnualLeaveDTO dto);
	
	public LeaveVO leaveGrantDayApply();
	
	public int annulLeaveNumSet(AnnualLeaveDTO dto);
	
	public LeaveVO annulLeaveNumSetApply();
	
	
}
