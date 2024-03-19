package org.hs.service;

import java.util.List;

import org.hs.domain.EmployeeVO;

public interface EmpService {
	public void register(EmployeeVO board);
	public List<EmployeeVO> getList();
	public EmployeeVO get(int EmpNum);
	public boolean modify(EmployeeVO board);
	public boolean remove(int EmpNum);
//	public int getTotal(Criteria cri);
	
}
