package org.hs.mapper;

import java.util.Date;
import java.util.List;

import org.hs.domain.EmployeeVO;

public interface SystemMapper {
	public int insertEmpInfo(EmployeeVO emp);
	public List<EmployeeVO> getEmployeesToUpdate();
	public int updateAnnualLeave(int annualLeaveNum, String leaveGrantDay);
}
