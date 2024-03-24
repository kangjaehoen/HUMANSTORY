package org.hs.mapper;

import java.util.List;

import org.hs.domain.LeavePolicyAttachVO;
import org.hs.domain.LeavePolicyVO;


public interface LeavePolicyAttachMapper {

	public void insertFile(LeavePolicyAttachVO attach);
	
	public List<LeavePolicyAttachVO> findByBno(int lpNum);

	

	
}
