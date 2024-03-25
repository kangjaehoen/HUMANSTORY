package org.hs.mapper;

import java.util.List;

import org.hs.domain.AttachVO;

import org.hs.domain.LeavePolicyVO;
import org.hs.domain.LeavePromoteVO;
import org.hs.domain.PromoteAttachVO;


public interface LeavePromoteAttachMapper {

	public void insert(PromoteAttachVO attach);
	
	public List<PromoteAttachVO> findByBno(int lprNum);

	public void delete(String uuid);
	
	public void deleteAll(int lprNum);

	
}
