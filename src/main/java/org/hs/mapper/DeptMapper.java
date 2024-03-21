package org.hs.mapper;

import java.util.List;

import org.hs.domain.DeptVO;

public interface DeptMapper {
	public List<DeptVO> getList();
	
	public DeptVO read(int deptNum);
	
	public void insertDeptInfo(DeptVO dept);
	
	public int delete(int DeptNum);
	
	public int update(DeptVO dept);
	
}
