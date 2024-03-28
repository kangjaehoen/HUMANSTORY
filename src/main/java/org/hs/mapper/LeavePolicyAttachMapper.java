package org.hs.mapper;

import java.util.List;

import org.hs.domain.AttachVO;

import org.hs.domain.LeavePolicyVO;


public interface LeavePolicyAttachMapper {

	public void insert(AttachVO attach);
	
	public List<AttachVO> findByBno(int lpNum);

	public void delete(String uuid);
	
	public void deleteAll(int lpNum);

	
}
