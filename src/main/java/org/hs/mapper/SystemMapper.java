package org.hs.mapper;

import java.util.List;

import org.hs.domain.EmployeeVO;

public interface SystemMapper {
	public int insertEmpInfo(EmployeeVO emp);
	public int grantAnnualLeave(EmployeeVO emp);
	public List<EmployeeVO> getEmployeesToUpdate();
	public int updateAnnualLeave();
}
