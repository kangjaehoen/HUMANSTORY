package org.hs.service;

import org.hs.mapper.SystemMapper;
import org.hs.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SystemServiceImpl implements SystemService {
	@Autowired
	private SystemMapper mapper;

	@Override
	public int updateLeaveAnnual() {
		log.info("자동부여는 도저히 안되겠음");
		return mapper.updateAnnualLeave(0, null);
	}
	
}
