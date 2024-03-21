package org.hs.mapper;

import java.util.List;

import org.hs.domain.EmployeeVO;

public interface EmpMapper{

	public List<EmployeeVO> getList();
	
	public EmployeeVO read(int empNum);
	
	public void insertEmpInfo(EmployeeVO emp);
	
	public int delete(int empNum);
	
	public int update(EmployeeVO emp);
	
	public String EmpjoinDept();
}