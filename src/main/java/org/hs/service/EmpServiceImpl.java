package org.hs.service;

import java.util.List;
import org.hs.domain.EmployeeVO;
import org.hs.mapper.EmployeeMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j

public class EmpServiceImpl implements EmpService {
	
	private EmployeeMapper mapper;
	
	@Override
	public void register(EmployeeVO emp) {

	}

	@Override
	public List<EmployeeVO> getList() {
		log.info("getList...");
		return mapper.getList();
	}

	@Override
	public EmployeeVO get(int empNum) {
		log.info("get....");
		return mapper.read(empNum);
	}

	@Override
	public boolean modify(EmployeeVO emp) {
		return false;
	}

	@Override
	public boolean remove(int empNum) {
		return false;
	}

}
