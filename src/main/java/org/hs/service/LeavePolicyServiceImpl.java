package org.hs.service;

import java.util.List;

import org.hs.domain.Criteria;
import org.hs.domain.LeavePolicyVO;
import org.hs.mapper.LeavePolicyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class LeavePolicyServiceImpl implements LeavePolicyService{
	
	@Autowired
	private LeavePolicyMapper mapper;
	
	

	@Override
	public int registerLeavePolicy(LeavePolicyVO vo) {
		log.info("휴가 정책 등록 , 서비스");
		return mapper.insert(vo);
	}



	@Override
	public List<LeavePolicyVO> getLeavePolicyCharts(Criteria cri) {
		log.info("휴가정책 리스트 , 서비스");
		return mapper.getList(cri);
	}



	@Override
	public LeavePolicyVO getLeavePolicyOne(int lpNum) {
		log.info("휴가정책 세부조회 , 서비스");
		return mapper.getDetail(lpNum);
	}



	@Override
	public int modifyLeavePolicy(LeavePolicyVO vo) {
		log.info("휴가 정책 게시물 수정, 서비스");
		return mapper.update(vo);
	}



	@Override
	public int removeLeavePolicy(int lpNum) {
		log.info("휴가 정책 삭제, 서비스");
		return mapper.delete(lpNum);
	}



	@Override
	public int listTotal(Criteria cri) {
		log.info("총 개수");
		return mapper.listTotalCount(cri);
	}

}
