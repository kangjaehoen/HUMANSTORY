package org.hs.service;

import java.util.List;

import org.hs.domain.DeptVO;

public interface DeptService {
	public void register(DeptVO dept);
	public List<DeptVO> getList();
	public DeptVO get(int deptNum);
	public boolean modify(DeptVO dept);
	public boolean remove(int deptNum);
}
