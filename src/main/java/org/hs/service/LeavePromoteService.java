package org.hs.service;

import java.util.List;

import org.hs.domain.AttachVO;
import org.hs.domain.Criteria;
import org.hs.domain.LeavePromoteVO;
import org.hs.domain.PromoteAttachVO;

public interface LeavePromoteService {
	public void registerLeavePromote(LeavePromoteVO vo);

	public List<LeavePromoteVO> getLeavePromoteCharts(Criteria cri);

	public LeavePromoteVO getLeavePromoteOne(int lprNum);

	public boolean modifyLeavePromote(LeavePromoteVO vo);

	public int removeLeavePromote(int lprNum);

	public int listTotal(Criteria cri);
	
	public List<PromoteAttachVO> getAttachList(int lprNum);

}
