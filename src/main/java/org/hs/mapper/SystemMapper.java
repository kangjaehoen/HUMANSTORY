package org.hs.mapper;

import org.hs.domain.EmployeeVO;

public interface SystemMapper {
	public int insertEmpInfo(EmployeeVO emp);
	public int grantAnnualLeave(EmployeeVO emp);
}
