package org.hs.mapper;

import java.util.List;

import org.hs.domain.EmployeeVO;

public interface EmployeeMapper {
	public List<EmployeeVO> getList();
	
//	public List<EmployeeVO> getListWithPaging(Criteria cri);
	
	public void insert(EmployeeVO board);
	
	public Integer insertSelectKey(EmployeeVO board);
	
	public EmployeeVO read( int empNum);
	
	public int delete(int empNum);
	
	public int update(EmployeeVO board);
	
//	public int getTotalCount(Criteria cri);
	
}
