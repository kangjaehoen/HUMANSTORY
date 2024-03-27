package org.hs.service;


import java.util.List;

import org.hs.domain.Criteria;
import org.hs.domain.LeavePromoteVO;
import org.hs.domain.PromoteAttachVO;
import org.hs.mapper.LeavePromoteAttachMapper;
import org.hs.mapper.LeavePromoteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class LeavePromoteServiceImpl implements LeavePromoteService {
	@Autowired
	private LeavePromoteMapper mapper;
	@Autowired
	private LeavePromoteAttachMapper lprMapper;
	
	
	
	@Override
	public void registerLeavePromote(LeavePromoteVO vo) {
		log.info("휴가 촉진 등록 , 서비스");
		System.out.println("휴가촉진 서비스 등록(파일 추가)");
		mapper.insert(vo);
		System.out.println("서비스 등록정보 "+vo);
		
		if (vo.getAttachList() == null || vo.getAttachList().size() <= 0) {
			return;
		}
		vo.getAttachList().forEach(attach -> {
			attach.setLprNum(vo.getLprNum());
			lprMapper.insert(attach);
			log.info("파일 등록 서비스 :"+attach);
			System.out.println("파일 등록 서비스 :"+attach);
		});

	}

	@Override
	public List<LeavePromoteVO> getLeavePromoteCharts(Criteria cri) {
		log.info("휴가촉진 리스트 , 서비스");
		return mapper.getList(cri);
	}

	@Override
	public LeavePromoteVO getLeavePromoteOne(int lprNum) {
		log.info("휴가 촉진 세부조회 , 서비스");
		return mapper.getDetail(lprNum);
	}

	@Override
	public boolean modifyLeavePromote(LeavePromoteVO vo) {
		log.info("휴가 촉진 게시물 수정, 서비스");
		
		lprMapper.deleteAll(vo.getLprNum());
		boolean result = mapper.update(vo) == 1;
		
		if(result && vo.getAttachList() != null && vo.getAttachList().size()>0) {
			vo.getAttachList().forEach(attach->{
				attach.setLprNum(vo.getLprNum());
				lprMapper.insert(attach);
			});
		}
		return result;
	}

	@Override
	public int removeLeavePromote(int lprNum) {
		log.info("휴가 촉진 삭제, 서비스");
		
		return mapper.delete(lprNum);
	}

	@Override
	public int listTotal(Criteria cri) {
		log.info("총 개수");
		return mapper.listTotalCount(cri);
	}

	@Override
	public List<PromoteAttachVO> getAttachList(int lprNum) {
		log.info("파일 첨부"+lprNum);
		return lprMapper.findByBno(lprNum);
	}

}
