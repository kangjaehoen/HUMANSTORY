package org.hs.service;

import java.util.List;

import org.hs.domain.AttachVO;
import org.hs.domain.Criteria;
import org.hs.domain.LeavePolicyVO;
import org.springframework.web.multipart.MultipartFile;

public interface LeavePolicyService {
	public void registerLeavePolicy(LeavePolicyVO vo);

	public List<LeavePolicyVO> getLeavePolicyCharts(Criteria cri);

	public LeavePolicyVO getLeavePolicyOne(int lpNum);

	public boolean modifyLeavePolicy(LeavePolicyVO vo);

	public int removeLeavePolicy(int lpNum);

	public int listTotal(Criteria cri);
	
	public List<AttachVO> getAttachList(int lpNum);
	

}
