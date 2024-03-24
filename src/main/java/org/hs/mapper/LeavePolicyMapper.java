package org.hs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.hs.domain.Criteria;
import org.hs.domain.LeavePolicyVO;

@Mapper
public interface LeavePolicyMapper {
	public void insert(LeavePolicyVO vo);
	public List<LeavePolicyVO> getList(Criteria cri);
	public LeavePolicyVO getDetail(int lpNum);
	public int update(LeavePolicyVO vo);
	public int delete(int lpNum);
	public int listTotalCount(Criteria cri);
}
