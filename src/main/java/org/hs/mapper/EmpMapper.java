package org.hs.mapper;

import java.util.List;

import org.hs.domain.EmpCriteria;
import org.hs.domain.EmployeeVO;

public interface EmpMapper{

	public List<EmployeeVO> getList();
	
	public EmployeeVO read(int empNum);
	
	public List<EmployeeVO> getListWithPaging(EmpCriteria cri);
	
	public void insertEmpInfo(EmployeeVO emp);
	
	public int delete(int empNum);
	
	public int update(EmployeeVO emp);
	
	public String EmpjoinDept();
	
	public int getTotalCount(EmpCriteria cri);
}