package org.hs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.hs.domain.LeavePolicyVO;

@Mapper
public interface LeavePolicyMapper {
	public int insert(LeavePolicyVO vo);
	public List<LeavePolicyVO> getList();
	public LeavePolicyVO getDetail(int lpNum);
}
