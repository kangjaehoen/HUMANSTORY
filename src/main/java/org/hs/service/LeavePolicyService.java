package org.hs.service;

import java.util.List;

import org.hs.domain.LeavePolicyVO;

public interface LeavePolicyService {
	public int registerLeavePolicy(LeavePolicyVO vo);
	public List<LeavePolicyVO> getLeavePolicyCharts();
}
