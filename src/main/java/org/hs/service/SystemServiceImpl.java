package org.hs.service;


import java.security.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.hs.domain.AnnualLeaveDTO;
import org.hs.domain.LeaveVO;
import org.hs.mapper.SystemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SystemServiceImpl implements SystemService {
	
	@Autowired
	private SystemMapper mapper;
	
//	@Override
//	public int updateLeaveAnnual(String leaveGrantDay,int annualLeaveNum) {
//		log.info("휴가 부여 Sevice");
//		log.info(leaveGrantDay);
//		log.info(annualLeaveNum);
//		return mapper.updateAnnualLeave(leaveGrantDay,annualLeaveNum);
//		
	
	@Override
	public int updateLeaveAnnual(AnnualLeaveDTO dto) {
		LeaveVO leaveVO = mapper.leaveGrantDayApply(); 
		LeaveVO leaveVO2 =mapper.annulLeaveNumSetApply();
	    String leaveDateString = leaveVO.getLeaveGrantDay();
	    
		try {
		Date leaveDate = new SimpleDateFormat("yyyy-MM-dd").parse(leaveDateString);
	    String formattedLeaveDate = new SimpleDateFormat("yyyy-MM-dd").format(leaveDate);
	    int annualNum = leaveVO2.getLeaveNumSet();
	    

				dto.setLeaveDay(formattedLeaveDate);
				dto.setAnnualNum(annualNum);
				System.out.println("service : "+formattedLeaveDate);
				System.out.println("service : "+ annualNum);
				System.out.println("service : "+dto);
				
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		return mapper.updateAnnualLeave(dto);
	}

	@Override
	public int leaveGrnathDay(AnnualLeaveDTO dto) {
		System.out.println("service : "+dto.getLeaveDay());
		return mapper.leaveGrantDay(dto);
	}

	@Override
	public int annulLeaveSet(AnnualLeaveDTO dto) {
		System.out.println("service : "+dto.getAnnualNum());
		return mapper.annulLeaveNumSet(dto);
	}
}
