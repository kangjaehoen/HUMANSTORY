package org.hs.service;

import java.util.List;

import org.hs.domain.Criteria;
import org.hs.domain.LeavePolicyVO;

public interface LeavePolicyService {
	public int registerLeavePolicy(LeavePolicyVO vo);
	public List<LeavePolicyVO> getLeavePolicyCharts(Criteria cri);
	public LeavePolicyVO getLeavePolicyOne(int lpNum);
	public int modifyLeavePolicy(LeavePolicyVO vo);
	public int removeLeavePolicy(int lpNum);
	public int listTotal(Criteria cri);

}
