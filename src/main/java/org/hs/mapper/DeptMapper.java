package org.hs.mapper;

import java.util.List;

import org.hs.domain.Criteria;
import org.hs.domain.DeptVO;

public interface DeptMapper {
	public List<DeptVO> getList();
	
	public DeptVO read(int deptNum);
	
	public List<DeptVO> getListWithPaging(Criteria cri);
	
	public void insertDeptInfo(DeptVO dept);
	
	public int delete(int DeptNum);
	
	public int update(DeptVO dept);
	
	public int getTotalCount(Criteria cri);
}
