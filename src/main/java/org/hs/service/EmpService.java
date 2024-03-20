package org.hs.service;

import java.util.List;

import org.hs.domain.EmployeeVO;


public interface EmpService {
	public void register(EmployeeVO emp);
	public List<EmployeeVO> getList();
	public EmployeeVO get(int empNum);
	public boolean modify(EmployeeVO emp);
	public boolean remove(int empNum);
	
	
}
