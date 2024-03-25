package org.hs.service;

import java.util.List;

import org.hs.domain.Criteria;
import org.hs.domain.LeavePolicyAttachVO;
import org.hs.domain.LeavePolicyVO;
import org.hs.mapper.LeavePolicyAttachMapper;
import org.hs.mapper.LeavePolicyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class LeavePolicyServiceImpl implements LeavePolicyService{
	
	@Autowired
	private LeavePolicyMapper mapper;
	@Autowired
	private LeavePolicyAttachMapper lpMapper;
	
	

	@Override
	public void registerLeavePolicy(LeavePolicyVO vo) {
		log.info("휴가 정책 등록 , 서비스");
		System.out.println("휴가정책 서비스 등록(파일 추가)");
		mapper.insert(vo);
		System.out.println("서비스 등록정보 "+vo);
		
		if (vo.getAttachList() == null || vo.getAttachList().size() <= 0) {
			return;
		}
		vo.getAttachList().forEach(attach -> {
			attach.setLpNum(vo.getLpNum());
			lpMapper.insert(attach);
			log.info("파일 등록 서비스 :"+attach);
			System.out.println("파일 등록 서비스 :"+attach);
		});

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
	public boolean modifyLeavePolicy(LeavePolicyVO vo) {
		log.info("휴가 정책 게시물 수정, 서비스");
		
		lpMapper.deleteAll(vo.getLpNum());
		boolean result = mapper.update(vo) == 1;
		
		if(result && vo.getAttachList() != null && vo.getAttachList().size()>0) {
			vo.getAttachList().forEach(attach->{
				attach.setLpNum(vo.getLpNum());
				lpMapper.insert(attach);
			});
		}
		return result;
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



	@Override
	public List<LeavePolicyAttachVO> getAttachList(int lpNum) {
		log.info("파일 첨부"+lpNum);
		return lpMapper.findByBno(lpNum);
	}

}
