package org.hs.service;

import java.util.List;

import org.hs.domain.DeptVO;
import org.hs.mapper.DeptMapper;
import org.hs.mapper.EmpMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class DeptServiceImpl implements DeptService {
	private DeptMapper mapper;

	@Override
	public void register(DeptVO dept) {
		mapper.insertDeptInfo(dept);
	}

	@Override
	public List<DeptVO> getList() {
		return mapper.getList();
	}

	@Override
	public DeptVO get(int deptNum) {
		return mapper.read(deptNum);
	}

	@Override
	public boolean modify(DeptVO dept) {
		return mapper.update(dept)==1;
	}

	@Override
	public boolean remove(int deptNum) {
		return mapper.delete(deptNum)==1;
	}

}
